@echo off
setlocal

:: Configuração da unidade de rede
net use * /delete /yes
set UNIDADE=F:
set CAMINHO_REDE=\\172.16.9.122\arquivos
set USUARIO=user
set SENHA=@Dolp2025

:: Desconectar a unidade caso já esteja mapeada
net use %UNIDADE% /delete /yes >nul 2>&1

:: Mapear a unidade de rede com autenticação
net use %UNIDADE% %CAMINHO_REDE% /user:%USUARIO% %SENHA% /persistent:yes

:: Verificar se o mapeamento foi bem-sucedido
if %ERRORLEVEL% neq 0 (
    echo Erro ao mapear a unidade de rede.
    pause
    exit /b %ERRORLEVEL%
)

echo Unidade de rede mapeada com sucesso!
exit
