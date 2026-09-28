@echo off
chcp 65001 >nul
title Atualizar Repositório GitHub

echo ========================================================
echo   ATUALIZANDO ARQUIVOS NO GITHUB (PimsGT/barco)
echo ========================================================
echo.

:: 1. Adiciona todas as alterações (inclusões, renomeações e exclusões)
echo [1/3] Detectando mudancas e renomeacoes...
git add -A

:: 2. Cria o commit automático
echo [2/3] Criando commit...
git commit -m "Renomeia barco.html para index.html e atualiza arquivos"

:: 3. Faz o push para a branch main
echo.
echo [3/3] Enviando para o GitHub...
git push origin main

echo.
if %errorlevel% equ 0 (
    echo ========================================================
    echo   [SUCESSO] Repositorio atualizado!
    echo   Acesse: https://pimsgt.github.io/barco/
    echo ========================================================
) else (
    echo ========================================================
    echo   [AVISO] Verifique a mensagem acima para conferir o status.
    echo ========================================================
)

echo.
pause
