from ftplib import FTP, error_perm


class RobotFTP:

    def __init__(self, ip):

        self.ip = ip
        self.ftp = None
        self.base_path = None


# -------------------------
# CONNECT
# -------------------------

    def connect(self):

        self.ftp = FTP()
        self.ftp.connect(self.ip, 21, timeout=5)

        # Fanuc usually allows anonymous login
        self.ftp.login()

        self.detect_path()


# -------------------------
# FIND CONTROLLER MEMORY
# -------------------------

    def detect_path(self):

        possible_paths = [
            "MD:",
            "md:",
            "/md",
            "/",
        ]

        for path in possible_paths:

            try:
                self.ftp.cwd(path)
                self.base_path = path
                return
            except:
                continue

        raise Exception("Robot memory path not found")


# -------------------------
# LIST LS PROGRAMS
# -------------------------

    def list_programs(self):

        if not self.ftp:
            raise Exception("Robot not connected")

        self.ftp.cwd(self.base_path)

        files = self.ftp.nlst()

        programs = []

        for f in files:

            name = f.split()[-1]

            if name.lower().endswith(".ls"):
                programs.append(name)

        return sorted(programs)


# -------------------------
# DOWNLOAD
# -------------------------

    def download(self, program_name, local_path):

        if not self.ftp:
            raise Exception("Robot not connected")

        self.ftp.cwd(self.base_path)

        with open(local_path, "wb") as f:
            self.ftp.retrbinary(f"RETR {program_name}", f.write)


# -------------------------
# UPLOAD
# -------------------------

    def upload(self, program_name, local_path):

        if not self.ftp:
            raise Exception("Robot not connected")

        self.ftp.cwd(self.base_path)

        with open(local_path, "rb") as f:
            self.ftp.storbinary(f"STOR {program_name}", f)


# -------------------------
# DELETE PROGRAM
# -------------------------

    def delete(self, program_name):

        if not self.ftp:
            raise Exception("Robot not connected")

        self.ftp.cwd(self.base_path)

        try:
            self.ftp.delete(program_name)
        except error_perm as e:
            raise Exception(f"Delete failed: {e}")


# -------------------------
# FULL BACKUP
# -------------------------

    def backup_all(self, folder):

        if not self.ftp:
            raise Exception("Robot not connected")

        self.ftp.cwd(self.base_path)

        files = self.ftp.nlst()

        for f in files:

            local = f"{folder}/{f}"

            try:
                with open(local, "wb") as file:
                    self.ftp.retrbinary(f"RETR {f}", file.write)
            except:
                pass


# -------------------------
# CLOSE CONNECTION
# -------------------------

    def close(self):

        if self.ftp:
            try:
                self.ftp.quit()
            except:
                pass

            self.ftp = None