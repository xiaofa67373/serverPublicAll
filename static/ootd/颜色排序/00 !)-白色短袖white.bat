chcp 65001
set pre=00
@echo off 
:main 
if not "%~1"=="" ( 
  if exist "%~1" ( 
    move "%~nx1" "%~dp0\%pre% %~nx1" 
  ) else ( 
     echo "%~nx1" not exist 
  ) 
  shift /1 
  goto :main 
) 
:: 
::pause 
