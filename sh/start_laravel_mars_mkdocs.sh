#!/bin/bash

# ==============================================================================;
# torne o script executável: chmod +x sh/start_laravel_mars_mkdocs.sh;
# execute de qualquer pasta do sistema: ./sh/start_laravel_mars_mkdocs.sh;
# ==============================================================================;

# define o caminho absoluto da pasta do projeto;
PROJECT_PATH="/run/media/arthur/16f35587-adb2-4d60-a70a-d79b1401cf7b/_projetos/laravel_mars"

# entra na pasta do projeto;
cd "$PROJECT_PATH" || { echo "Erro: Não foi possível entrar em $PROJECT_PATH"; exit 1; }

# define o caminho do venv;
VENV_PATH=".venv"

# verifica se o venv existe;
if [ -d "$VENV_PATH" ]; then
    echo "Ativando o ambiente virtual em $PROJECT_PATH...";
    source "$VENV_PATH/bin/activate"
    
    echo "Iniciando o MkDocs...";
    # abre o navegador automaticamente;
    (sleep 2; if command -v xdg-open > /dev/null; then xdg-open http://127.0.0.1:8099; elif command -v open > /dev/null; then open http://127.0.0.1:8099; fi) &
    mkdocs serve -a 127.0.0.1:8099
else
    echo "erro: o diretório $VENV_PATH não foi encontrado dentro de $PROJECT_PATH.";
    exit 1
fi
