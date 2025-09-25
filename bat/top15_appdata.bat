@echo off
echo Analisando pastas em %%LOCALAPPDATA%%...
powershell -NoLogo -NoProfile -Command ^
  "Get-ChildItem -Path $env:LOCALAPPDATA -Directory | ForEach-Object { Write-Host 'Analisando:' $_.Name -ForegroundColor Yellow; $size = (Get-ChildItem $_.FullName -Recurse -File -ErrorAction SilentlyContinue | Measure-Object -Property Length -Sum).Sum / 1MB; [PSCustomObject]@{ Folder = $_.Name; SizeMB = [math]::Round($size, 2); Path = $_.FullName } } | Sort-Object SizeMB -Descending | Select-Object -First 15 | Format-Table -AutoSize"

pause
