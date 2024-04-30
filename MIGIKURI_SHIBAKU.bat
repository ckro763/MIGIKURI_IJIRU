@echo off
whoami /priv | find "SeDebugPrivilege" > nul
if %errorlevel% neq 0 (
 @powershell start-process %~0 -verb runas
 exit
)
reg add "HKEY_CURRENT_USER\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InProcServer32" /f /ve
echo;
echo;
echo;
echo;
echo;
echo;

echo ‚Å‚«‚½‚æ
echo Ä‹N“®‚µ‚Ä‚Ë
echo;
echo;
echo;
echo;
echo;
pause