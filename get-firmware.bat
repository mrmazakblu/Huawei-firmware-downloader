@echo off
cls
color 0e
title 		Firmware Grabber V-8
if not defined in_subprocess (cmd /k set in_subprocess=y ^& %0 %*) & exit )
goto startloop
:start
cls
cls
IF EXIST "%~dp0\bin" SET PATH=%PATH%;"%~dp0\bin"
if exist %~dp0\*.txt del %~dp0\*.txt
if exist %userprofile%\Desktop\UPDATE\%model%-%cust%\changelog.xml del  %userprofile%\Desktop\UPDATE\%model%-%cust%\changelog.xml
cls
echo(
echo(
cecho  {0c} ***************************************************{#}{\n}
cecho   *  {0E}   DO YOU WANT TO DOWNLOAD LATEST SCRIPT {#}      *{\n}
cecho   *  {06}   OR RUN THIS VERSION??  V-8                {#}     *{\n}
cecho   {0c}***************************************************{#}{\n}
echo(
echo( 
CHOICE  /C 12 /M "   1=RUN  or   2=UPDATE"
IF ERRORLEVEL 2 GOTO update
IF ERRORLEVEL 1 GOTO run
:update
IF EXIST "%~dp0\grabber-update\*.txt" del "%~dp0\grabber-update\*.txt" /Q
IF NOT EXIST "%~dp0\grabber-update" mkdir "%~dp0\grabber-update"
bin\wget.exe -P %~dp0\grabber-update  https://raw.githubusercontent.com/mrmazakblu/Huawei-firmware-downloader/master/get-firmware.bat --no-check-certificate
echo @echo off > %~dp0\grabber-update\grabber-update.bat
echo( >> %~dp0\grabber-update\grabber-update.bat
echo timeout 5 >> %~dp0\grabber-update\grabber-update.bat
echo xcopy /y /f %~dp0get-firmware.bat %~dp0get-firmware.bak >> %~dp0\grabber-update\grabber-update.bat
echo IF EXIST %~dp0grabber-update\get-firmware.bat xcopy /y /f %~dp0grabber-update\get-firmware.bat %~dp0get-firmware.bat >> %~dp0\grabber-update\grabber-update.bat
echo timeout 5 >> %~dp0\grabber-update\grabber-update.bat
echo start %~dp0\get-firmware.bat >> %~dp0\grabber-update\grabber-update.bat
echo exit >> %~dp0\grabber-update\grabber-update.bat
timeout 3
start %~dp0\grabber-update\grabber-update.bat
exit
:run
cls
echo(
echo(
cecho  {0c} ***************************************************{#}{\n}
cecho   *  {0E}   Do You Want to Check Device For Model {#}      *{\n}
cecho   *  {06}   OR CHOOSE FROM LIST??                  {#}     *{\n}
cecho   {0c}***************************************************{#}{\n}
echo(
echo( 
CHOICE  /C 12 /M "USE DEVICE FOR MODEL NUMBER?   1=Yes  or   2=NO"
IF ERRORLEVEL 2 GOTO input
IF ERRORLEVEL 1 GOTO phone
:phone
cls
echo NEED TO CONNECT TO PHONE TO CHECK MODEL INFORMATION
echo NEED TO CONNECT TO PHONE TO CHECK MODEL INFORMATION
adb wait-for-device
for /f "tokens=*" %%i in ('adb shell getprop ro.product.model') do set model=%%i
for /f "tokens=*" %%i in ('adb shell getprop ro.product.CustCVersion') do set cust=%%i
for /f "tokens=*" %%i in ('adb shell getprop ro.build.display.id') do set version=%%i
IF "%model%" == "" (
	echo MODEL IS BLANK
	echo MUST SET MODEL NUMBER )
IF "%cust%" == "" echo CUST is blank
IF "%version%" == "" echo Version is blank
echo(
cecho {0E}%model%{#}-{0F}%cust%{#}--{0D}%version%{#}{\n}
echo(
echo   ***************************************************
cecho   *  {0E}    RIGHT NOW MODEL IS SET TO %model%   {#}       *{\n}
cecho   *  {06}    CUST REGION IS SeT TO %cust%         {#}      *{\n}
echo   ***************************************************
echo(
cecho {0E}  DO YOU WANT TO CONTINUE WITH THESE SETTINGS? {#}{\n}
cecho {0E}  Select 2 for NO to set model number  {#}{\n}
echo( 
CHOICE  /C 12 /M "CONTINUES WITH THESE SETTINGS  1=Yes  or   2=NO"
IF ERRORLEVEL 2 GOTO input
IF ERRORLEVEL 1 GOTO default
:input
cls
set model=
set cust=
echo your input must be in same format as default
echo needs to be CAPITOLIZED and have same -
echo   ********************************************
cecho   * {0B}             EXAMPLES   {#}                 *{\n}
cecho   * {07}     MODELS    REGIONS    {#}               *{\n}
cecho   * {0E}  1   BND-L21 C432 (Europe) {#}              *{\n}
cecho   * {0B}  2   BND-L21 C185 (Middle East) {#}         *{\n}
cecho   * {0E}  3   BND-L21 C10 (Russia){#}                *{\n}
cecho   * {0A}  4   BND-AL10 C675 (India){#}               *{\n}
cecho   * {0E}  5   BND-AL10 C00 (China){#}                *{\n}
cecho   * {0C}  6   BND-TL10 C00 (China){#}                *{\n}
cecho   * {0D}  7   BND-L24 C567 (USA) {#}                 *{\n}
cecho   * {03}  8   BND-L34 C567 (USA){#}                  *{\n}
cecho   * {07}  4   BND-L22 See Al10 C675{#}               *{\n}
cecho   * {07}  9   Other  Manual Input Device          {#}*{\n}
echo   ********************************************
echo( 
CHOICE  /C 123456789 /M "Choose Downloaded Version"
IF ERRORLEVEL 9 GOTO other
IF ERRORLEVEL 8 GOTO BND-L34-C567
IF ERRORLEVEL 7 GOTO BND-L24-C567
IF ERRORLEVEL 6 GOTO BND-TL10-C00
IF ERRORLEVEL 5 GOTO BND-AL10-C00
IF ERRORLEVEL 4 GOTO BND-AL10-C675
IF ERRORLEVEL 3 GOTO BND-L21-C10 
IF ERRORLEVEL 2 GOTO BND-L21-C185
IF ERRORLEVEL 1 GOTO BND-L21-C432
:BND-L34-C567
set model=BND-L34
set cust=C567
goto default
:BND-L24-C567
set model=BND-L24
set cust=C567
goto default
:BND-TL10-C00
set model=BND-TL10
set cust=C00
goto default
:BND-AL10-C00
set model=BND-AL10
set cust=C00
goto default
:BND-AL10-C675
set model=BND-AL10
set cust=C675
goto default
:BND-L21-C10
set model=BND-L21
set cust=C10
goto default
:BND-L21-C185
set model=BND-L21
set cust=C185
goto default
:BND-L21-C432
set model=BND-L21
set cust=C432
goto default
:other
SET /P model="What model would you like to Download for? Ex "BND-L21"  =  "
SET /P cust="What region code would you like to Download for? Ex "C10"  =  "
goto default
:default
IF "%model%" == "" (
	echo MODEL IS BLANK
	echo CANNOT CONTINUE WITHOUT MODEL
	pause
	goto input )
IF "%cust%" == "" (
	echo CUST - REGION IS BLANK
	echo CANNOT CONTINUE WITHOUT CUST
	pause
	goto input )
if exist %userprofile%\Desktop\UPDATE\%model%-%cust%\changelog.xml del  %userprofile%\Desktop\UPDATE\%model%-%cust%\changelog.xml
%~dp0\bin\wget -O %~dp0\filelist.txt http://pro-teammt.ru/projects/hwff/info/ff_get_data_android.php?model_json=%model%
call bin\jrepl "{" "\n{" /M /X /f "%~dp0\filelist.txt" /o -
call bin\jrepl " , " " : " /M /X /f "%~dp0\filelist.txt" /o -
setlocal EnableDelayedExpansion
for /F "delims=" %%A in ('type "%~dp0\filelist.txt"') do (
  set row=%%A
  set row=!row:"=!
  echo.!row!>> "%~dp0\myText.txt"
)
for /f "tokens=* delims=" %%a in ('findstr "%cust%" "%~dp0\myText.txt"') do echo %%a >> %~dp0\cust-firmware.txt
for /f "tokens=* delims=" %%a in ('findstr "FullOTA" "%~dp0\cust-firmware.txt"') do echo %%a >> %~dp0\full-firmware.txt
for /f "tokens=6,7,8 delims=:" %%a in ('findstr "changelog_link" "%~dp0\full-firmware.txt"') do echo %%a:%%b:%%c >> %~dp0\dladdress-firmware.txt
for /f "tokens=2 delims=:" %%a in ('findstr "changelog_link" "%~dp0\full-firmware.txt"') do echo %%a >> %~dp0\version-firmware.txt
call bin\jrepl " " "" /M /X /f "%~dp0\dladdress-firmware.txt" /o -
set x=1
for /f "delims=" %%a in (%~dp0\version-firmware.txt) do (
  echo Line_!x! %%a >> %~dp0\version-numbered.txt
  set /a x=!x!+1 )
set x=1
for /f "delims=" %%a in (%~dp0\dladdress-firmware.txt) do (
  echo Line_!x! %%a >> %~dp0\dladdress-numbered.txt
  set /a x=!x!+1 )
For /F %%A In ('Find /C "http"^<"%~dp0\dladdress-firmware.txt"') Do (
    Set "mlc=%%A" )
find "changelog.xml" /I "%~dp0\dladdress-firmware.txt" > nul
if errorlevel 1 (
    echo dladdress.txt MISSING information
	echo Going To Start Again
	pause
	goto start
) else (
	cls
	cecho  {0c} ***************************************************{#}{\n}
	cecho {03}. * %mlc% dladdress found, ok continue {#}               *{\n}
	cecho {03}. *                                                      *{\n}
	cecho  {0c} ***************************************************{#}{\n}
)
:menuLOOP
	::Load up our menu selections
cecho  {0c} ***************************************************{#}{\n}
	echo.--------------------------------------------------------------------------------
	for /f "tokens=* delims=_ " %%A in ('"findstr /b /c:"Line" "%~dp0\version-numbered.txt""') do echo.  %%A
	set choice=
	echo.&set /p choice= Please make a selection ONLY INPUT LINE NUMBER or hit ENTER to exit: ||GOTO:end
	echo %choice%
	for /f "tokens=2 delims=_ " %%A in ('"findstr /b /c:"Line" "%~dp0\dladdress-numbered.txt""') do echo %%A >> %~dp0\good-choice.txt
	find "%choice%" "%~dp0\good-choice.txt" > nul
if errorlevel 1 (
    echo Made Bad selection 
	echo Type in only the Number from Line_*
	pause
	cls
	goto menuLOOP
) else (
	echo Applying choice and continueing After press any button
)
pause
	for /f "tokens=3 delims=_ " %%A in ('"findstr /b /c:"Line" "%~dp0\dladdress-numbered.txt""') do set   dladress=%%A
set base=%dladress:changelog.xml=%
%~dp0\bin\wget "%base%filelist.xml" -O %~dp0\UPDATE_list.txt
find "xml" /I "%~dp0\UPDATE_list.txt" > nul
if errorlevel 1 (
    echo UPDATE_list.txt MISSING information
	echo Going To Start Again
	pause
	goto start
) else (
	echo UPDATE_list.txt ok continue
)
for /f %%a in ('%~dp0\bin\XML.EXE sel -t -v "//dpath" %~dp0\UPDATE_list.txt') do (
	echo %%a >> %~dp0\dpath.txt
)
for /f %%a in ('%~dp0\bin\XML.EXE sel -t -v "//md5" %~dp0\UPDATE_list.txt') do (
	echo %%a >> %~dp0\md5.txt
)
call %~dp0\bin\merge.bat
for /f "tokens=7,9 delims== " %%a in ('findstr "package=" "%~dp0\UPDATE_list.txt"') do echo %%b %%a >> %~dp0\subpath-file.txt && echo %%a >> %~dp0\file.txt
call %~dp0\bin\jrepl "> " "" /M /X /f "%~dp0\subpath-file.txt" /o -
call %~dp0\bin\jrepl "\x22" "" /M /X /f "%~dp0\subpath-file.txt" /o -
call %~dp0\bin\jrepl "\x22" "" /M /X /f "%~dp0\file.txt" /o -
< %~dp0\subpath-file.txt ( set /P "link1=" & set /P "link2=" & set /P "link3=" )
< %~dp0\file.txt ( set /P "file1=" & set /P "file2=" & set /P "file3=" )
for /f "tokens=2" %%i in ('findstr "%file1%" "%~dp0\merged-file.txt"') do set md5-1=%%i
for /f "tokens=2" %%i in ('findstr "%file2%" "%~dp0\merged-file.txt"') do set md5-2=%%i
for /f "tokens=2" %%i in ('findstr "%file3%" "%~dp0\merged-file.txt"') do set md5-3=%%i
echo %base%%link1%  MD5- %md5-1%
echo %base%%link2% MD5- %md5-2%
echo %base%%link3% MD5- %md5-3%
%~dp0\bin\wget -P %userprofile%\Desktop\UPDATE\%model%-%cust% %base%changelog.xml
for /f "tokens=5,6 delims== " %%a in ('findstr "component" "%userprofile%\Desktop\UPDATE\%model%-%cust%\changelog.xml"') do echo %%a %%b >> %~dp0\newversion.txt
set /p newversion=<%~dp0\newversion.txt
echo( 
echo   ***************************************************
cecho   * {0B}       CURRENT version on phone is{#}              *{\n}
cecho   * {0E}           %version% {#}             *{\n}
cecho   * {0B}       NEW VERSION TO DOWNLOAD IS {#}              *{\n}
cecho   * {0A}           %newversion:/>=% {#}         *{\n}
cecho   * {0E}         Download 1=Yes 2=No{#}                    *{\n}
echo   ***************************************************
echo( 
CHOICE  /C 12 /M "Download Now 1=Yes  or 2=NO"
IF ERRORLEVEL 2 GOTO test
IF ERRORLEVEL 1 GOTO continue
:continue
%~dp0\bin\wget -P %userprofile%\Desktop\UPDATE\%model%-%cust% %base%%link1%
%~dp0\bin\wget -P %userprofile%\Desktop\UPDATE\%model%-%cust% %base%%link2%
%~dp0\bin\wget -P %userprofile%\Desktop\UPDATE\%model%-%cust% %base%%link3%
:test
echo Checking MD5 hashes %file1%
%~dp0\bin\fciv.exe -add %userprofile%\Desktop\UPDATE\%model%-%cust%\%file1% -md5 > %userprofile%\Desktop\UPDATE\%model%-%cust%\%file1:.zip=-md5.txt%
echo Checking MD5 hashes %file2%
%~dp0\bin\fciv.exe -add %userprofile%\Desktop\UPDATE\%model%-%cust%\%file2% -md5 > %userprofile%\Desktop\UPDATE\%model%-%cust%\%file2:.zip=-md5.txt%
echo Checking MD5 hashes %file3%
%~dp0\bin\fciv.exe -add %userprofile%\Desktop\UPDATE\%model%-%cust%\%file3% -md5 > %userprofile%\Desktop\UPDATE\%model%-%cust%\%file3:.zip=-md5.txt%
find "%md5-1%" /I "%userprofile%\Desktop\UPDATE\%model%-%cust%\%file1:.zip=-md5.txt%" > nul
if errorlevel 1 (
    echo MD5-1 MISSMATCH
	echo Ending
	pause
	GOTO:end
) else (
	echo md5-1 ok continue
)
find "%md5-2%" /I "%userprofile%\Desktop\UPDATE\%model%-%cust%\%file2:.zip=-md5.txt%" > nul
if errorlevel 1 (
    echo MD5-2 MISSMATCH
	echo Ending
	pause
	GOTO:end
) else (
	echo md5-2 ok continue
)
find "%md5-3%" /I "%userprofile%\Desktop\UPDATE\%model%-%cust%\%file3:.zip=-md5.txt%" > nul
if errorlevel 1 (
    echo MD5-3 MISSMATCH
	echo Ending
	pause
	GOTO:end
) else (
	echo md5-3 ok continue
)
mkdir %userprofile%\Desktop\UPDATE\%model%-%cust%\%newversion:/>=%
move %userprofile%\Desktop\UPDATE\%model%-%cust%\*.* %userprofile%\Desktop\UPDATE\%model%-%cust%\%newversion:/>=%
:end
:EOF
echo(
echo   *************************************************************************************
cecho   *{0E}UPDATE FILES HAVE BEEN SAVED TO UPDATE FOLDR ADDED TO YOUR Desktop{#}      *{\n}
cecho   *{0E}Next line cleans the extra files created during download{#}                *{\n}
cecho   *{0E}If you do not want all txt files removed, change the last line on script{#}*{\n}
echo   *************************************************************************************
pause
::del "%~dp0\output*.txt"
del "%~dp0\*.txt"
exit
:startloop
cls
goto start