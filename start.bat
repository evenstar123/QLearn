@echo off
echo Starting QLearn-MVP V2.0...

REM Check if Python is installed
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Error: Python is not installed or not in PATH
    pause
    exit /b 1
)

REM Check if Node.js is installed
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Error: Node.js is not installed or not in PATH
    pause
    exit /b 1
)

echo Setting up backend...
cd backend

REM Create virtual environment if it doesn't exist
if not exist "venv\" (
    echo Creating Python virtual environment...
    python -m venv venv
)

REM Activate virtual environment
call venv\Scripts\activate.bat

REM Create .env file if it doesn't exist
if not exist ".env" (
    echo Creating .env file...
    echo DATABASE_URL=postgresql://qlearn_user:your_password@localhost:5432/qlearn_v2 > .env
    echo REDIS_URL=redis://localhost:6379 >> .env
    echo OPENAI_API_KEY=your_openai_api_key_here >> .env
    echo ENVIRONMENT=development >> .env
    echo PORT=8000 >> .env
)

REM Install Python dependencies
echo Installing Python dependencies...
pip install fastapi uvicorn pydantic python-dotenv

echo Backend setup complete.
cd ..

echo Setting up frontend...
cd frontend

REM Install Node.js dependencies
echo Installing Node.js dependencies...
npm install

REM Create .env.local file if it doesn't exist
if not exist ".env.local" (
    echo Creating frontend .env.local file...
    echo NEXT_PUBLIC_API_URL=http://localhost:8000/api/v2 > .env.local
    echo BACKEND_URL=http://localhost:8000 >> .env.local
)

echo Frontend setup complete.
cd ..

echo.
echo Setup complete! Now starting the development servers...
echo.

REM Start backend in a new window
start "QLearn Backend" cmd /c "cd backend && call venv\Scripts\activate.bat && python main.py"

REM Wait a bit for backend to start
timeout /t 5 /nobreak >nul

REM Start frontend in a new window
start "QLearn Frontend" cmd /c "cd frontend && npm run dev"

echo.
echo QLearn-MVP V2.0 is starting up!
echo.
echo Frontend: http://localhost:3000
echo Backend API: http://localhost:8000
echo API Docs: http://localhost:8000/docs
echo.
echo Two command windows should open for backend and frontend.
echo Close those windows to stop the services.
echo.
pause
