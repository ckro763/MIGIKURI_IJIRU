@echo off
whoami /priv | find "SeDebugPrivilege" > nul
if %errorlevel% neq 0 (
 @powershell start-process %~0 -verb runas
 exit
)
reg delete "HKEY_CURRENT_USER\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InProcServer32" /f
echo;
echo;
echo;
echo;
echo;
echo;
echo;
echo ‚Å‚«‚½‚æ
echo;
echo;
echo;
echo;
echo;
echo;
pause