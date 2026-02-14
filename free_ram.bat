@echo off
setlocal

echo.
echo === Free RAM helper (safe, quick) ===
echo.

REM 1) Ask Windows to trim working sets (may require admin for some processes)
powershell -NoProfile -ExecutionPolicy Bypass -Command ^
  "$src = @'" ^
using System; ^
using System.Runtime.InteropServices; ^
public static class Win32 { ^
  [DllImport(""psapi.dll"")] ^
  public static extern bool EmptyWorkingSet(IntPtr h); ^
} ^
"'@; Add-Type $src; Get-Process | ForEach-Object { try { [Win32]::EmptyWorkingSet($_.Handle) | Out-Null } catch {} }"

REM 2) Run idle maintenance tasks
Rundll32.exe advapi32.dll,ProcessIdleTasks

REM 3) Clear temp folders (best effort)
set TEMP_DIRS=%TEMP% C:\Windows\Temp
for %%D in (%TEMP_DIRS%) do (
  if exist "%%D" (
    echo Cleaning %%D
    del /q /f /s "%%D\*" >nul 2>&1
    for /d %%G in ("%%D\*") do rd /s /q "%%G" >nul 2>&1
  )
)

REM 4) Optional: if EmptyStandbyList.exe is present, use it (safer default)
set "ESL_MODE=priority0standbylist"
if exist "%~dp0EmptyStandbyList.exe" (
  echo Emptying standby list (%ESL_MODE%)...
  "%~dp0EmptyStandbyList.exe" %ESL_MODE% >nul 2>&1
) else (
  echo EmptyStandbyList.exe not found next to this .bat.
  set /p OPEN_ESL=Open download page? (O/N) :
  if /i "%OPEN_ESL%"=="O" start "" "https://wj32.org/wp/software/empty-standby-list/"
)

echo.
echo Done. If nothing improved, a restart usually helps the most.
pause
