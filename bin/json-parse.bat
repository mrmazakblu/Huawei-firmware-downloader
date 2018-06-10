@echo off
title 		Firmware Grabber
if not defined in_subprocess (cmd /k set in_subprocess=y ^& %0 %*) & exit )
:: Make it possible to read immediate value of variable using !variable! syntax.
setlocal enabledelayedexpansion

:: Read file "test.json" into variable data, removing line breaks.
set data=
for /f "delims=" %%x in (test.json) do set "data=!data!%%x"

:: Escape double quotes in data
set data=%data:"=%


:: Finally call program with the entire content of the JSON file as parameter
::program -e "SETTINGS=%data%"
echo %data% > test.txt
pause
exit