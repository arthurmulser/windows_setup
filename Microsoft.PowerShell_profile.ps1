### ### ### docker;

function dn3 { # ok;
    Write-Host "executando: docker compose exec node npm install, docker compose exec node npm run dev;"
    docker compose exec node npm install
    docker compose exec node npm run dev
    Write-Host "ok;"
}

function du3 { # ok;
    Write-Host "executando: docker-compose down, docker compose up -d;"
    docker-compose down
    docker compose up -d
    Write-Host "ok;"
}

function helpd3 {
    Write-Host "docker:"
    Write-Host "dn3 - docker compose exec node npm install, docker compose exec node npm run dev;"
    Write-Host "du3 - docker-compose down, docker compose up -d;"
    Write-Host "--- --- --- --- ---"
}

### ### ### git;

function ga3 { # ok;
    Write-Host "executando: git add .;"
    git add .
    Write-Host "ok;"
}

function gc3 { # ok;
    param(
        [Parameter(Mandatory=$true)]
        [string]$message
    )
    $date = Get-Date -Format "yyyyMMdd"
    Write-Host "executando: git commit -m standard;"
    git commit -m "$date - $message;"
    Write-Host "ok;"
}

function gp3 { # ok;
    Write-Host "executando: git push origin main;"
    git push origin main
    Write-Host "ok;"
}

function helpg3 {
    Write-Host "git:"
    Write-Host "ga3 - git add .;"
    Write-Host "gc3 - git commit -m standard;"
    Write-Host "gp3 - git push origin main;"
    Write-Host "--- --- --- --- ---"
}

### ### ### flutter;

function fb3 { # ok;
    Write-Host "executando: flutter build apk;"
    flutter build apk
    Write-Host "ok;"
}

function fc3 { # ok;
    Write-Host "executando: flutter clean;"
    flutter clean
    Write-Host "ok;"
}

function fd3 { # ok;
    Write-Host "executando: flutter devices;"
    flutter devices
    Write-Host "ok;"
}

function fr3 { # ok;
    Write-Host "executando: flutter run;"
    flutter run 
    Write-Host "ok;"  
}

function helpf3 {
    Write-Host "flutter:"
    Write-Host "fb3 - flutter build apk;"
    Write-Host "fc3 - flutter clean;"
    Write-Host "fd3 - flutter devices;"
    Write-Host "fr3 - flutter run;"
    Write-Host "--- --- --- --- ---"
}

### ### ### laravel;

function lc3 { # ok;
    Write-Host "executando: php artisan config:clear, php artisan route:clear, php artisan view:clear, php artisan optimize:clear;"
    php artisan config:clear
    php artisan route:clear
    php artisan view:clear
    php artisan optimize:clear 
    Write-Host "ok;"
}

function helpl3 {
    Write-Host "laravel:"
    Write-Host "lc3 - php artisan config:clear, php artisan route:clear, php artisan view:clear, php artisan optimize:clear;"
    Write-Host "--- --- --- --- ---"
}

### ### ### python;

function pr3 { # ok;
    Write-Host "executando: pip install -r requirements.txt;"
    pip install -r requirements.txt
    Write-Host "ok;"
}

function pv3 { # ok;
    Write-Host "executando: .\venv\Scripts\Activate.ps1;"
    .\venv\Scripts\Activate.ps1
    Write-Host "ok;"
}

function helpp3 {
    Write-Host "python:"
    Write-Host "pr3 - pip install -r requirements.txt;"
    Write-Host "pv3 - .\venv\Scripts\Activate.ps1;"
    Write-Host "--- --- --- --- ---"
}

### ### ### code;

function helpc3 {
    Write-Host "code:"
    Write-Host "ctrl + d - multiple selection;"
    Write-Host "ctrl + shift + g - source control;"
    Write-Host "--- --- --- --- ---"
}

function p3 {
    Write-Host ". cifraoPROFILE;"
    . $PROFILE
    Write-Host "ok;"
}