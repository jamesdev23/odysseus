@echo off
cd /d "%~dp0"

echo ============================================
echo   Odysseus - One-Click Start (Windows)
echo ============================================
echo.

if not exist "venv\Scripts\python.exe" (
    echo [1/3] Creating virtual environment...
    python -m venv venv
    if errorlevel 1 (
        echo ERROR: Failed to create venv. Make sure Python is installed.
        pause
        exit /b 1
    )
) else (
    echo [1/3] Virtual environment found.
)

echo [2/3] Installing dependencies...
call venv\Scripts\pip.exe install -r requirements.txt -q
if errorlevel 1 (
    echo WARNING: pip install had issues, continuing anyway...
)

echo [3/3] Starting Odysseus...
echo.
echo   Open http://127.0.0.1:7000 in your browser.
echo   Default login: admin / admin1234
echo.
echo   Press Ctrl+C to stop the server.
echo ============================================
echo.

call venv\Scripts\python.exe -m uvicorn app:app --host 127.0.0.1 --port 7000 --reload

pause
