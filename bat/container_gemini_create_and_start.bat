@echo off

REM ===== caminho da pasta onde esta o dockerfile =====
set PROJECT_DIR=C:\_Projects

REM ===== nome da imagem e container =====
set IMAGE_NAME=gemini-cli-dev
set CONTAINER_NAME=gemini-cli-dev

echo ===============================
echo build;
echo ===============================

docker build -t %IMAGE_NAME% "%PROJECT_DIR%"

echo ===============================
echo remove old;
echo ===============================

docker rm -f %CONTAINER_NAME% 2>nul

echo ===============================
echo create new;
echo ===============================

docker run -dit --name %CONTAINER_NAME% -v %PROJECT_DIR%:/app %IMAGE_NAME%

echo ===============================
echo opening terminal inside container;
echo ===============================

docker exec -it %CONTAINER_NAME% bash