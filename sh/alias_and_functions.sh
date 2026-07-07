#!/bin/bash

# ==============================================================================;
# este arquivo é referenciado em: ~/.bashrc;
# após alterá-lo, execute no terminal: source ~/.bashrc;
# para testar se foi carregado corretamente, execute: type gc3;
# retorno esperado: gc3 is a function;
# ==============================================================================;

### ### ### docker;

dn3() {
    echo "executando: docker compose exec node npm install, docker compose exec node npm run dev;"
    docker compose exec node npm install
    docker compose exec node npm run dev
    echo "ok;"
}

du3() {
    echo "executando: docker-compose down, docker compose up -d;"
    docker-compose down
    docker compose up -d
    echo "ok;"
}

helpd3() {
    echo "docker:"
    echo "dn3 - docker compose exec node npm install, docker compose exec node npm run dev;"
    echo "du3 - docker-compose down, docker compose up -d;"
    echo "--- --- --- --- ---"
}

### ### ### git;

alias ga3='git add .'

gc3() {
    local message="$1"
    local date=$(date +%Y%m%d)
    echo "executando: git commit -m standard;"
    git commit -m "$date - $message;"
    echo "ok;"
}

alias gp3='git push origin main'

helpg3() {
    echo "git:"
    echo "ga3 - git add .;"
    echo "gc3 - git commit -m standard;"
    echo "gp3 - git push origin main;"
    echo "--- --- --- --- ---"
}

### ### ### flutter;

alias fb3='flutter build apk'
alias fc3='flutter clean'
alias fd3='flutter devices'
alias fr3='flutter run'

helpf3() {
    echo "flutter:"
    echo "fb3 - flutter build apk;"
    echo "fc3 - flutter clean;"
    echo "fd3 - flutter devices;"
    echo "fr3 - flutter run;"
    echo "--- --- --- --- ---"
}

### ### ### laravel;

lc3() {
    echo "executando: php artisan config:clear, php artisan route:clear, php artisan view:clear, php artisan optimize:clear;"
    php artisan config:clear
    php artisan route:clear
    php artisan view:clear
    php artisan optimize:clear
    echo "ok;"
}

helpl3() {
    echo "laravel:"
    echo "lc3 - php artisan config:clear, php artisan route:clear, php artisan view:clear, php artisan optimize:clear;"
    echo "--- --- --- --- ---"
}

### ### ### python;

pe3() {
    local arquivo="$1"
    echo "executando: python $arquivo"
    python "$arquivo"
    echo "ok;"
}

alias pr3='pip install -r requirements.txt'

pv3() {
    echo "executando: source venv/bin/activate;"
    source venv/bin/activate
    echo "ok;"
}

helpp3() {
    echo "python:"
    echo "pe3 - python arquivo.py;"
    echo "pr3 - pip install -r requirements.txt;"
    echo "pv3 - source venv/bin/activate;"
    echo "--- --- --- --- ---"
}

### ### ### code;

helpc3() {
    echo "code:"
    echo "ctrl + d - multiple selection;"
    echo "ctrl + shift + g - source control;"
    echo "--- --- --- --- ---"
}

p3() {
    echo ". cifraoPROFILE;"
    source ~/.bashrc
    echo "ok;"
}
