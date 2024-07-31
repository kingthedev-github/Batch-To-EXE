@echo off
setlocal

REM Check if a file was dragged and dropped
if "%~1"=="" (
    echo Please drag and drop a .bat file onto this script to convert it to .exe.
    pause
    exit /b 1
)

REM Path to Bat2Exe tool (adjust the path as necessary)
set Bat2ExePath="C:\Path\To\Bat2ExeConverter.exe"

REM Input batch file (dragged and dropped file)
set InputFile=%~1

REM Output executable file (same name with .exe extension)
set OutputFile=%~dpn1.exe

REM Convert the batch file to an executable
%Bat2ExePath% -in "%InputFile%" -out "%OutputFile%"

if errorlevel 1 (
    echo Conversion failed.
    pause
    exit /b 1
) else (
    echo Conversion succeeded.
    pause
)

endlocal