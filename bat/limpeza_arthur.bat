@echo off
echo limpando arquivos temporarios...

:: limpar pasta prefetch
echo limpando prefetch...
del /f /s /q C:\Windows\Prefetch\*
echo prefetch limpo;

:: limpar pasta recent (atalhos recentes)
echo limpando recent...
del /f /s /q %APPDATA%\Microsoft\Windows\Recent\*
echo recent limpo;

:: Limpar Temp do sistema
echo limpando temp do sistema...
del /f /s /q C:\Windows\Temp\*
echo temp do sistema limpo;

:: Limpar Temp do usuário (%temp%)
echo limpando temp do usuario...
del /f /s /q %temp%\*
echo temp do usuario limpo;

echo limpeza concluida;
pause
