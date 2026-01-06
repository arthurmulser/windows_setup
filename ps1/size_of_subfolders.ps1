param (
    [Parameter(Mandatory = $true)]
    [string]$Path
)

if (-not (Test-Path $Path)) {
    Write-Host "pasta não encontrada."
    exit
}

Get-ChildItem -Path $Path -Directory | ForEach-Object {
    $size = (
        Get-ChildItem $_.FullName -Recurse -File -ErrorAction SilentlyContinue |
        Measure-Object Length -Sum
    ).Sum

    [PSCustomObject]@{
        Pasta     = $_.Name
        TamanhoMB = [Math]::Round($size / 1MB, 2)
    }
} | Sort-Object TamanhoMB -Descending | Format-Table -AutoSize

# digite no terminal: .\size_of_subfolders.ps1 -Path "C:\Users\dev01.dlp\AppData\Local";