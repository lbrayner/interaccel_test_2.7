@echo off

rem Bypass "Terminate Batch Job" prompt.
if "%~1"=="-FIXED_CTRL_C" (
   REM Remove the -FIXED_CTRL_C parameter
   SHIFT
) ELSE (
   REM Run the batch with <NUL and -FIXED_CTRL_C
   CALL <NUL %0 -FIXED_CTRL_C %*
   GOTO :EOF
)

cd C:\Users\leona\usr\interaccel_test2.7\2. application (64 bit)

tasklist | findstr /i "interaccel.exe" > nul

if %errorlevel% EQU 0 goto end

START /MIN CMD.EXE /C interaccel.exe

:end
