@echo off
setlocal
cd /d "%~dp0"
echo Starting local server on http://localhost:8000
py -m http.server 8000
endlocal
