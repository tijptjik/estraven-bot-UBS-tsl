; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#include "environment.iss"

#define MyAppName "UNICORN Binance Trailing Stop Loss Bot"
#define MyAppVersion "0.8.0"
#define MyAppPublisher "LUCIT Systems and Development"
#define MyAppURL "https://www.lucit.tech"
#define MyAppExeName "ubtsl.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{B45308C4-B11C-4831-8B01-83C95C488062}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
LicenseFile=C:\Users\Oliver\PycharmProjects\unicorn-binance-trailing-stop-loss\bot\InnoSetup\LICENSE
InfoBeforeFile=C:\Users\Oliver\PycharmProjects\unicorn-binance-trailing-stop-loss\bot\InnoSetup\before_installation.txt
InfoAfterFile=C:\Users\Oliver\PycharmProjects\unicorn-binance-trailing-stop-loss\bot\InnoSetup\after_installation.txt
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog
OutputDir=Z:\unicorn-binance-trailing-stop-loss\dist
OutputBaseFilename=ubtsl_setup
Compression=lzma
SolidCompression=yes
WizardStyle=modern
ChangesEnvironment=true

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "Z:\unicorn-binance-trailing-stop-loss\dist\ubtsl\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "Z:\unicorn-binance-trailing-stop-loss\dist\ubtsl\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"

[Tasks]
Name: envPath; Description: "Add to PATH variable (necessary to call ubtsl.exe globally)"

[Code]
procedure CurStepChanged(CurStep: TSetupStep);
begin
    if (CurStep = ssPostInstall) and WizardIsTaskSelected('envPath')
    then EnvAddPath(ExpandConstant('{app}'));
end;

procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
begin
    if CurUninstallStep = usPostUninstall
    then EnvRemovePath(ExpandConstant('{app}'));
    if CurUninstallStep = usPostUninstall
    then DelTree(ExpandConstant('{app}'), True, True, True);
end;

[Run]
Filename: "https://www.lucit.tech/unicorn-binance-trailing-stop-loss-bot.html?source=ubtsl_setup.exe"; Description: "Open the info web page to read about further information."; Flags: shellexec runasoriginaluser postinstall
Filename: "https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss"; Description: "If you like this project, we would be very happy about a star on GitHub."; Flags: shellexec runasoriginaluser postinstall unchecked 
Filename: "https://twitter.com/LUCIT_SysDev"; Description: "Follow us on Twitter to be informed about new software releases."; Flags: shellexec runasoriginaluser postinstall unchecked

[UninstallDelete]
Type: filesandordirs; Name: "{app}"

