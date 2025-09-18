@echo off
setlocal

:: ------------------------------
:: parte 1 - renomear chave do registro
:: ------------------------------

set OLD_KEY="HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\AnyDesk"
set NEW_KEY="HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\AnyDesk1"
set TMP_FILE=%TEMP%\anydesk.reg

echo [1/2] renomeando chave de registro do anyDesk...

reg export %OLD_KEY% %TMP_FILE% /y >nul 2>&1

if exist %TMP_FILE% (
    powershell -Command "(Get-Content '%TMP_FILE%') -replace 'AnyDesk', 'AnyDesk1' | Set-Content '%TMP_FILE%'"
    reg import %TMP_FILE% >nul 2>&1
    reg delete %OLD_KEY% /f >nul 2>&1
    del %TMP_FILE% >nul 2>&1
    echo - Chave de registro renomeada com sucesso.
) else (
    echo - erro: a chave anyDesk não foi encontrada.
)

:: ------------------------------
:: parte 2 - limpar pasta appdata do anyDesk
:: ------------------------------

set "TARGET_DIR=C:\Users\arthur.mulser\AppData\Roaming\AnyDesk"
echo [2/2] Limpando arquivos da pasta: %TARGET_DIR%
echo - Mantendo apenas 'user.conf' e a pasta 'thumbnails'

:: apagar todos os arquivos exceto user.conf
for %%F in ("%TARGET_DIR%\*") do (
    if /I not "%%~nxF"=="user.conf" (
        del /f /q "%%F" >nul 2>&1
    )
)

:: apagar todas as subpastas exceto thumbnails
for /d %%D in ("%TARGET_DIR%\*") do (
    if /I not "%%~nxD"=="thumbnails" (
        rd /s /q "%%D" >nul 2>&1
    )
)

echo - limpeza concluída.

pause
endlocal
