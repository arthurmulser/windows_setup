@echo off
REM caminho do projeto
cd /d C:\_Projects\bpo_streamlit

REM ativa o ambiente virtual
call venv\Scripts\activate.bat

REM entra na pasta lib
cd lib

REM sobe o streamlit
streamlit run main.py

pause
