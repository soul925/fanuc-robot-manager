[Setup]
AppName=FANUC Robot Manager
AppVersion=1.0
DefaultDirName={autopf}\FANUC Robot Manager
DefaultGroupName=FANUC Robot Manager
OutputDir=installer
OutputBaseFilename=FANUC_Robot_Manager_Setup
Compression=lzma
SolidCompression=yes

[Files]
Source: "dist\FANUC_Robot_Manager\*"; DestDir: "{app}"; Flags: recursesubdirs

[Icons]
Name: "{group}\FANUC Robot Manager"; Filename: "{app}\FANUC_Robot_Manager.exe"
Name: "{commondesktop}\FANUC Robot Manager"; Filename: "{app}\FANUC_Robot_Manager.exe"

[Run]
Filename: "{app}\FANUC_Robot_Manager.exe"; Description: "Launch FANUC Robot Manager"; Flags: nowait postinstall