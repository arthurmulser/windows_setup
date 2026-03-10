@echo off

REM ===== nome do container =====
set CONTAINER_NAME=gemini-cli-dev

echo ===============================
echo starting container;
echo ===============================

docker start %CONTAINER_NAME% >nul

echo ===============================
echo opening terminal;
echo ===============================

docker exec -it %CONTAINER_NAME% bash