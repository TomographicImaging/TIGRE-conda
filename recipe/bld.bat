@echo on

call "C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\VC\Auxiliary\Build\vcvarsall.bat" x64

REM Check if the Python executable exists
if not exist "%PYTHON%" (
    echo Error: Python executable not found at %PYTHON%
    exit /b 1
)

cd /D %SRC_DIR%/Python

%PYTHON% -m pip install .