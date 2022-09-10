@echo off
CHCP 65001
cls
:menu1
cls
color 3
echo ███████╗███╗   ██╗███████╗██████╗  ██████╗██╗   ██╗           
echo ██╔════╝████╗  ██║██╔════╝██╔══██╗██╔════╝╚██╗ ██╔╝           
echo █████╗  ██╔██╗ ██║█████╗  ██████╔╝██║  ███╗╚████╔╝            
echo ██╔══╝  ██║╚██╗██║██╔══╝  ██╔══██╗██║   ██║ ╚██╔╝             
echo ███████╗██║ ╚████║███████╗██║  ██║╚██████╔╝  ██║              
echo ╚══════╝╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝ ╚═════╝   ╚═╝              
echo.                                                               
echo ███╗   ███╗ █████╗ ███╗   ██╗ █████╗  ██████╗ ███████╗██████╗ 
echo ████╗ ████║██╔══██╗████╗  ██║██╔══██╗██╔════╝ ██╔════╝██╔══██╗
echo ██╔████╔██║███████║██╔██╗ ██║███████║██║  ███╗█████╗  ██████╔╝
echo ██║╚██╔╝██║██╔══██║██║╚██╗██║██╔══██║██║   ██║██╔══╝  ██╔══██╗
echo ██║ ╚═╝ ██║██║  ██║██║ ╚████║██║  ██║╚██████╔╝███████╗██║  ██║
echo ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝
echo.
echo Denvolvido por Walter Rodrigues v1.0
echo.
REM Menu principal
:menu1
echo GERENCIADOR DE PLANOS DE ENERGIA
echo.
echo  1. Habilitar plano de energia - Desempenho máximo          
echo  2. Listar planos de energia instalados
echo  3. Painel de seleção de plano de energia
echo  4. Fechar
echo.           
set /p opc= Escolha uma opção:
echo _______________________
if %opc% equ 1 goto opc1
if %opc% equ 2 goto opc2
if %opc% equ 3 goto opc3
if %opc% equ 4 goto opc4

:opc1
cls
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
powercfg.cpl
goto menu1

:opc2
cls
powercfg.exe -list
echo.
echo Use o comando "powercfg.exe /delete" para excluir um plano de energia.
echo.
pause
goto menu1

:opc3
cls
powercfg.cpl
goto menu1

:opc4
exit
