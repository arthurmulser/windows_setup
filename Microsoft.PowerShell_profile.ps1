function gc3 {
    param(
        [Parameter(Mandatory=$true)]
        [string]$message
    )
    $date = Get-Date -Format "yyyyMMdd"
    Write-Host "executando: git commit -m standard;"
    git commit -m "$date - $message;"
}

function gp3 {
    Write-Host "executando: git push origin main;"
    git push origin main
}

function fb3 {
    Write-Host "executando: flutter build apk;"
    flutter build apk  
}

function fr3 {
    Write-Host "executando: flutter run;"
    flutter run   
}

function help3 {
    Write-Host "code:"
    Write-Host "ctrl + d - multiple selection;"
    Write-Host "ctrl + shift + g - source control;"
    Write-Host "--- --- --- --- ---"
}

function p3 {
    Write-Host ". cifraoPROFILE;"
    . $PROFILE
}