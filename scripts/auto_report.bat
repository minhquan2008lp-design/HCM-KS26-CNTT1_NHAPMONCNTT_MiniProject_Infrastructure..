
@echo off
chcp 65001 >nul
setlocal

REM AUDIT: Chi doc log va tao bao cao, khong xoa tep.
set "ROOT=%~dp0.."
set "LOG=%ROOT%\data\log-he-thong.log"
set "REPORT=%ROOT%\backup\bao-cao-su-co.txt"

if not exist "%LOG%" (
    echo Khong tim thay file log!
    exit /b 1
)

> "%REPORT%" echo ========================================
>>"%REPORT%" echo BAO CAO SU CO - GREENTECH
>>"%REPORT%" echo Thoi gian: %date% %time%
>>"%REPORT%" echo ========================================

findstr /I /C:"CRITICAL" /C:"ERROR" /C:"TIMEOUT" "%LOG%" >> "%REPORT%"

echo Da tao bao cao moi thanh cong!
endlocal
