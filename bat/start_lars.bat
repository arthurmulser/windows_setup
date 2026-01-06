@echo off

setlocal enabledelayedexpansion

REM defina a pasta base aqui;
set BASE_PATH=C:\_Projects\laravel_mars

REM definir portas;
set LARAVEL_PORT=8014
set MKDOCS_PORT=8015

cd /d "%BASE_PATH%\laravel-app"

REM subir lars;
start cmd /c "cd /d %BASE_PATH%\laravel-app && php artisan serve --port=%LARAVEL_PORT%"

timeout /t 3 >nul

REM subir mkdocs;
start cmd /c "cd /d %BASE_PATH% && mkdocs serve --dev-addr localhost:%MKDOCS_PORT%"

timeout /t 3 >nul

REM abrir navegador;
timeout /t 2 >nul
start http://localhost:%LARAVEL_PORT%
start http://localhost:%MKDOCS_PORT%

timeout /t 1 >nul

npm run dev

pause