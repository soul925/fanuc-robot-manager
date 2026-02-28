from PySide6.QtWidgets import *
from PySide6.QtCore import Qt, QThread, Signal
from PySide6.QtGui import QColor, QTextCharFormat, QSyntaxHighlighter, QFont

from core.ftp_client import RobotFTP
from core.network_scanner import scan_network

import json
import os
import re


# -------------------------
# SYNTAX HIGHLIGHTER
# -------------------------

class LsHighlighter(QSyntaxHighlighter):

    def __init__(self, document):
        super().__init__(document)

        self.rules = []

        keyword_format = QTextCharFormat()
        keyword_format.setForeground(QColor("#4FC3F7"))

        keywords = [
            r"/PROG", r"/MN", r"/POS",
            r"\bCALL\b", r"\bWAIT\b", r"\bIF\b", r"\bENDIF\b",
            r"\bJ\b", r"\bL\b",
            r"R\[", r"PR\[", r"LBL\["
        ]

        for word in keywords:
            self.rules.append((re.compile(word), keyword_format))

        number_format = QTextCharFormat()
        number_format.setForeground(QColor("#AED581"))

        self.rules.append((re.compile(r"\b\d+\b"), number_format))


    def highlightBlock(self, text):

        for pattern, fmt in self.rules:
            for match in pattern.finditer(text):
                start, end = match.span()
                self.setFormat(start, end - start, fmt)


# -------------------------
# NETWORK THREAD
# -------------------------

class ScanThread(QThread):

    result = Signal(list)

    def __init__(self, ip):
        super().__init__()
        self.ip = ip

    def run(self):
        robots = scan_network(self.ip)
        self.result.emit(robots)


# -------------------------
# MAIN WINDOW
# -------------------------

class MainWindow(QMainWindow):

    def __init__(self):
        super().__init__()

        self.setWindowTitle("FANUC Robot Manager")
        self.resize(1350, 850)

        self.robot = None
        self.all_programs = []
        self.validation_errors = False

        os.makedirs("programs", exist_ok=True)

        self.build_ui()
        self.load_robots()

        self.statusBar()


# -------------------------
# UI
# -------------------------

    def build_ui(self):

        main = QWidget()
        self.setCentralWidget(main)

        root = QVBoxLayout(main)
        root.setContentsMargins(10,10,10,10)
        root.setSpacing(6)

# =========================
# TOOLBAR
# =========================

        toolbar = QFrame()
        toolbar.setFixedHeight(38)

        t_layout = QHBoxLayout(toolbar)
        t_layout.setContentsMargins(8,4,8,4)

        self.robot_select = QComboBox()
        self.robot_select.setMinimumWidth(220)

        btn_connect = QPushButton("CONNECT")
        btn_add = QPushButton("ADD ROBOT")
        btn_scan = QPushButton("SCAN")
        btn_refresh = QPushButton("REFRESH")

        btn_connect.clicked.connect(self.connect_robot)
        btn_add.clicked.connect(self.add_robot)
        btn_scan.clicked.connect(self.scan_network)
        btn_refresh.clicked.connect(self.refresh)

        self.status_label = QLabel("● OFFLINE")
        self.status_label.setStyleSheet("color:red;font-weight:bold")

        t_layout.addWidget(QLabel("Robot"))
        t_layout.addWidget(self.robot_select)
        t_layout.addWidget(btn_connect)
        t_layout.addWidget(btn_add)
        t_layout.addWidget(btn_scan)
        t_layout.addWidget(btn_refresh)

        t_layout.addStretch()
        t_layout.addWidget(self.status_label)

        root.addWidget(toolbar)

# =========================
# MAIN SPLITTER
# =========================

        vertical_split = QSplitter(Qt.Vertical)

# =========================
# CENTER AREA
# =========================

        center_split = QSplitter(Qt.Horizontal)
        center_split.setHandleWidth(6)

# -------- LEFT PANEL --------

        left = QFrame()
        left_layout = QVBoxLayout(left)

        title = QLabel("PROGRAMS")
        title.setStyleSheet("font-weight:bold")

        self.search = QLineEdit()
        self.search.setPlaceholderText("Search program...")
        self.search.textChanged.connect(self.search_program)

        self.program_list = QListWidget()
        self.program_list.itemClicked.connect(self.open_program)

        left_layout.addWidget(title)
        left_layout.addWidget(self.search)
        left_layout.addWidget(self.program_list)

        center_split.addWidget(left)

# -------- RIGHT PANEL --------

        right = QFrame()
        right_layout = QVBoxLayout(right)

        title2 = QLabel("PROGRAM EDITOR")
        title2.setStyleSheet("font-weight:bold")

        self.editor = QTextEdit()
        self.editor.setFont(QFont("Consolas", 11))
        self.editor.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)

        self.highlighter = LsHighlighter(self.editor.document())

        buttons = QHBoxLayout()

        btn_download = QPushButton("DOWNLOAD")
        btn_check = QPushButton("CHECK")
        btn_upload = QPushButton("UPLOAD")

        btn_download.clicked.connect(self.download)
        btn_check.clicked.connect(self.check_program)
        btn_upload.clicked.connect(self.upload)

        buttons.addWidget(btn_download)
        buttons.addWidget(btn_check)
        buttons.addWidget(btn_upload)
        buttons.addStretch()

        right_layout.addWidget(title2)
        right_layout.addWidget(self.editor)
        right_layout.addLayout(buttons)

        center_split.addWidget(right)

        center_split.setStretchFactor(0,3)
        center_split.setStretchFactor(1,7)

        vertical_split.addWidget(center_split)

# =========================
# LOG PANEL
# =========================

        log_frame = QFrame()
        log_layout = QVBoxLayout(log_frame)

        log_title = QLabel("SYSTEM LOGS")
        log_title.setStyleSheet("font-weight:bold")

        self.log = QTextEdit()
        self.log.setReadOnly(True)

        clear = QPushButton("CLEAR")
        clear.clicked.connect(self.log.clear)

        log_layout.addWidget(log_title)
        log_layout.addWidget(self.log)
        log_layout.addWidget(clear)

        vertical_split.addWidget(log_frame)

        vertical_split.setStretchFactor(0,8)
        vertical_split.setStretchFactor(1,2)

        root.addWidget(vertical_split)

# =========================
# STYLE
# =========================

        self.setStyleSheet("""

        QMainWindow{
            background-image: url(assets/background.png);
            background-position: center;
            background-repeat: no-repeat;
            background-color:#1b1b1b;
        }

        QFrame{
            background:#2a2a2a;
            border:1px solid #3a3a3a;
            border-radius:4px;
        }

        QTextEdit,QListWidget{
            background:#202020;
            color:#e0e0e0;
            border:1px solid #444;
        }

        QLineEdit{
            background:#202020;
            color:white;
            border:1px solid #444;
            padding:4px;
        }

        QPushButton{
            background:#353535;
            border:1px solid #555;
            padding:5px 10px;
        }

        QPushButton:hover{
            background:#4a4a4a;
        }

        QLabel{
            color:#ddd;
        }

        """)

# -------------------------
# LOG
# -------------------------

    def log_msg(self, msg):

        self.log.append(msg)
        self.log.ensureCursorVisible()
        QApplication.processEvents()
        self.statusBar().showMessage(msg)


# -------------------------
# ROBOTS
# -------------------------

    def load_robots(self):

        self.robot_select.clear()

        if not os.path.exists("robots.json"):
            return

        with open("robots.json") as f:
            data = json.load(f)

        for r in data["robots"]:
            self.robot_select.addItem(r["ip"], r["ip"])


    def add_robot(self):

        ip, ok = QInputDialog.getText(self, "Add Robot", "Enter Robot IP")

        if not ok or not ip:
            return

        data = {"robots": []}

        if os.path.exists("robots.json"):
            with open("robots.json") as f:
                data = json.load(f)

        data["robots"].append({"name": ip, "ip": ip})

        with open("robots.json", "w") as f:
            json.dump(data, f, indent=4)

        self.load_robots()
        self.log_msg(f"Robot added: {ip}")


    def connect_robot(self):

        ip = self.robot_select.currentData()

        if not ip:
            return

        self.robot = RobotFTP(ip)

        try:

            self.robot.connect()

            self.status_label.setText("● CONNECTED")
            self.status_label.setStyleSheet("color:lime")

            self.log_msg(f"Connected to {ip}")
            self.refresh()

        except Exception as e:

            self.status_label.setText("● OFFLINE")
            self.status_label.setStyleSheet("color:red")
            self.log_msg(str(e))


# -------------------------
# NETWORK SCAN
# -------------------------

    def scan_network(self):

        ip = self.robot_select.currentData()

        if not ip:
            self.log_msg("Select robot first")
            return

        self.log_msg("Scanning network...")

        self.scan_thread = ScanThread(ip)
        self.scan_thread.result.connect(self.show_scan_results)
        self.scan_thread.start()


    def show_scan_results(self, robots):

        if not robots:
            self.log_msg("No robots found")
            return

        for ip in robots:

            if QMessageBox.question(
                self,
                "Robot Found",
                f"Add robot {ip}?",
                QMessageBox.Yes | QMessageBox.No
            ) == QMessageBox.Yes:

                self.add_robot()


# -------------------------
# PROGRAM LIST
# -------------------------

    def refresh(self):

        if not self.robot:
            return

        self.program_list.clear()

        try:

            self.all_programs = self.robot.list_programs()

            for p in self.all_programs:
                self.program_list.addItem(p)

            self.log_msg(f"{len(self.all_programs)} programs loaded")

        except Exception as e:
            self.log_msg(str(e))


    def search_program(self, text):

        self.program_list.clear()

        for p in self.all_programs:
            if text.lower() in p.lower():
                self.program_list.addItem(p)


# -------------------------
# DOWNLOAD
# -------------------------

    def open_program(self):
        self.download()


    def download(self):

        if not self.robot:
            return

        item = self.program_list.currentItem()

        if not item:
            return

        name = item.text()
        path = f"programs/{name}"

        try:

            self.robot.download(name, path)

            with open(path) as f:
                self.editor.setPlainText(f.read())

            self.log_msg(f"{name} downloaded")

        except Exception as e:
            self.log_msg(str(e))


# -------------------------
# VALIDATION
# -------------------------

    def check_program(self):

        self.validation_errors = False

        code = self.editor.toPlainText().splitlines()

        errors = []

        for line_no, line in enumerate(code, start=1):

            if line.count("[") != line.count("]"):
                errors.append(f"Line {line_no}: Bracket mismatch")

        if errors:

            self.validation_errors = True

            QMessageBox.warning(self, "Validation Errors", "\n".join(errors))
            self.log_msg("Program has errors")

        else:

            QMessageBox.information(self, "Validation", "Program OK")
            self.log_msg("Program validated successfully")


# -------------------------
# UPLOAD
# -------------------------

    def upload(self):

        self.check_program()

        if self.validation_errors:
            return

        if not self.robot:
            return

        item = self.program_list.currentItem()

        if not item:
            return

        name = item.text()
        path = f"programs/{name}"

        try:

            with open(path, "w") as f:
                f.write(self.editor.toPlainText())

            self.robot.upload(name, path)

            self.log_msg(f"{name} uploaded")

        except Exception as e:
            self.log_msg(str(e))