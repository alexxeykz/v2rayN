[Setup]
AppName=Stoun
AppVersion=1.0
AppPublisher=Stoun VPN
DefaultDirName={autopf}\Stoun
DefaultGroupName=Stoun
OutputBaseFilename=Stoun-Setup
Compression=lzma
SolidCompression=yes
WizardStyle=modern
SetupIconFile=v2rayN\v2rayN\Resources\Stoun.ico
OutputDir=Output
SourceDir=.
UninstallDisplayIcon={app}\Stoun.exe
PrivilegesRequired=admin
ArchitecturesInstallIn64BitMode=x64compatible

[Languages]
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "Создать ярлык на рабочем столе"; GroupDescription: "Дополнительно:"; Flags: unchecked

[Files]
Source: "v2rayN\Release\windows-64\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs

[Icons]
Name: "{group}\Stoun"; Filename: "{app}\Stoun.exe"
Name: "{group}\Удалить Stoun"; Filename: "{uninstallexe}"
Name: "{commondesktop}\Stoun"; Filename: "{app}\Stoun.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\Stoun.exe"; Description: "Запустить Stoun"; Flags: nowait postinstall skipifsilent
