function du3 { # ok;
    Write-Host "docker compose up -d;"
    docker compose up -d
}

function helpd3 {
    Write-Host "docker:"
    Write-Host "du3 - docker compose up -d;"
    Write-Host "--- --- --- --- ---"
}

### ### ###

function ga3 { # ok;
    Write-Host "executando: git add .;"
    git add .
}

function gc3 { # ok;
    param(
        [Parameter(Mandatory=$true)]
        [string]$message
    )
    $date = Get-Date -Format "yyyyMMdd"
    Write-Host "executando: git commit -m standard;"
    git commit -m "$date - $message;"
}

function gp3 { # ok;
    Write-Host "executando: git push origin main;"
    git push origin main
}

function helpg3 {
    Write-Host "git:"
    Write-Host "ga3 - git add .;"
    Write-Host "gc3 - git commit -m standard;"
    Write-Host "gp3 - git push origin main;"
    Write-Host "--- --- --- --- ---"
}

### ### ###

function fb3 { # ok;
    Write-Host "executando: flutter build apk;"
    flutter build apk  
}

function fd3 { # ok;
    Write-Host "executando: flutter devices;"
    flutter devices
}

function fr3 { # ok;
    Write-Host "executando: flutter run;"
    flutter run   
}

function helpf3 {
    Write-Host "flutter:"
    Write-Host "fb3 - flutter build apk;"
    Write-Host "fd3 - flutter devices;"
    Write-Host "fr3 - flutter run;"
    Write-Host "--- --- --- --- ---"
}

### ### ###

function helpc3 {
    Write-Host "code:"
    Write-Host "ctrl + d - multiple selection;"
    Write-Host "ctrl + shift + g - source control;"
    Write-Host "--- --- --- --- ---"
}

function p3 {
    Write-Host ". cifraoPROFILE;"
    . $PROFILE
}