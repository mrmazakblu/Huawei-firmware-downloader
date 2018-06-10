@echo off
title 		Firmware Grabber
if not defined in_subprocess (cmd /k set in_subprocess=y ^& %0 %*) & exit )
IF EXIST "%~dp0\bin" SET PATH=%PATH%;"%~dp0\bin"
if exist dpath.txt del dpath.txt
if exist subpath-file.txt del subpath-file.txt
if exist md5.txt del md5.txt
if exist file.txt del file.txt
if exist merged-file.txt del merged-file.txt
if exist update\%model%-%cust%\changelog.xml del update\%model%-%cust%\changelog.xml
echo NEED TO CONNECT TO PHONE TO CHECK MODEL INFORMATION
echo NEED TO CONNECT TO PHONE TO CHECK MODEL INFORMATION
adb wait-for-device
adb shell getprop ro.product.model > device-info.txt
adb shell getprop ro.product.CustCVersion >> device-info.txt
adb shell getprop ro.build.display.id >> device-info.txt
< device-info.txt ( set /P "model=" & set /P "cust=" & set /P "version=" )
echo(
echo   ***************************************************
cecho   *  {0E}    RIGHT NOW MODEL IS SET TO %model%   {#}       *{\n}
cecho   *  {06}    CUST REGION IS SeT TO %cust%         {#}      *{\n}
echo   ***************************************************
echo(
cecho {0E}  DO YOU WANT TO CONTINUE WITH THESE SETTINGS? {#}{\n}
echo( 
CHOICE  /C 12 /M "CONTINUES WITH THESE SETTINGS  1=Yes  or   2=NO"
IF ERRORLEVEL 2 GOTO input
IF ERRORLEVEL 1 GOTO default
:input
echo your input must be in same format as default
echo needs to be CAPITOLIZED and have same -
echo   ********************************************
cecho   * {0B}             EXAMPLES   {#}                 *{\n}
cecho   * {07}     MODELS    REGIONS    {#}               *{\n}
cecho   * {0E}     BND-L21 C432 (Europe) {#}              *{\n}
cecho   * {0B}     BND-L21 C185 (Middle East) {#}         *{\n}
cecho   * {0E}     BND-L21 C10 (Russia){#}                *{\n}
cecho   * {0A}     BND-AL10 C675 (India){#}               *{\n}
cecho   * {0E}     BND-AL10 C00 (China){#}                *{\n}
cecho   * {0C}     BND-TL10 C00 (China){#}                *{\n}
cecho   * {0D}     BND-L24 C567 (USA) {#}                 *{\n}
cecho   * {03}     BND-L34 C567 (USA){#}                  *{\n}
cecho   * {07}     BND-L22 See Al10 C675{#}               *{\n}
echo   ********************************************
echo( 
SET /P model="What model would you like to Download for?"
SET /P cust="What region code would you like to Download for?"
:default
bin\wget -O filelist.txt http://pro-teammt.ru/projects/hwff/info/ff_get_data_android.php?model_json=%model%
call bin\jrepl "([\s\S]*?)%cust%([\s\S]*)" "stdout.Write($2);$1" /m /j /f filelist.txt /o trash.txt >before.txt
call bin\jrepl "([\s\S]*?)FullOTA([\s\S]*)" "stdout.Write($2);$1" /m /j /f before.txt /o trash.txt >after.txt
call bin\jrepl "([\s\S]*?)filelist_link([\s\S]*)" "stdout.Write($2);$1" /m /j /f after.txt /o trash.txt >before.txt
call bin\jrepl "([\s\S]*?)http://([\s\S]*)" "stdout.Write($2);$1" /m /j /f before.txt /o trash.txt >after.txt
call bin\jrepl "([\s\S]*?).xml([\s\S]*)" "stdout.Write($2);$1" /m /j /f after.txt /o dladdress.txt >trash.txt
set /p dladress=<dladdress.txt
set base=http://%dladress:filelist=%
bin\wget "http://%dladress%.xml" -O update_list.txt
for /f %%a in ('bin\XML.EXE sel -t -v "//dpath" update_list.txt') do (
	echo %%a >> dpath.txt
)
for /f %%a in ('bin\XML.EXE sel -t -v "//md5" update_list.txt') do (
	echo %%a >> md5.txt
)
call bin\merge.bat
for /f "tokens=7,9 delims== " %%a in ('findstr "package=" "update_list.txt"') do echo %%b %%a >> subpath-file.txt && echo %%a >> file.txt
call bin\jrepl "> " "" /M /X /f "subpath-file.txt" /o -
call bin\jrepl "\x22" "" /M /X /f "subpath-file.txt" /o -
call bin\jrepl "\x22" "" /M /X /f "file.txt" /o -
< subpath-file.txt ( set /P "link1=" & set /P "link2=" & set /P "link3=" )
< file.txt ( set /P "file1=" & set /P "file2=" & set /P "file3=" )
for /f "tokens=2" %%i in ('findstr "%file1%" "merged-file.txt"') do set md5-1=%%i
for /f "tokens=2" %%i in ('findstr "%file2%" "merged-file.txt"') do set md5-2=%%i
for /f "tokens=2" %%i in ('findstr "%file3%" "merged-file.txt"') do set md5-3=%%i
echo %base%%link1%  MD5- %md5-1%
echo %base%%link2% MD5- %md5-2%
echo %base%%link3% MD5- %md5-3%
bin\wget -P update\%model%-%cust% %base%changelog.xml
for /f "tokens=5,6 delims== " %%a in ('findstr "component" "update\%model%-%cust%\changelog.xml"') do echo %%a %%b >> newversion.txt
set /p newversion=<newversion.txt
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
bin\wget -P update\%model%-%cust% %base%%link1%
bin\wget -P update\%model%-%cust% %base%%link2%
bin\wget -P update\%model%-%cust% %base%%link3%
:test
echo Checking MD5 hashes %file1%
bin\fciv.exe -add update\%model%-%cust%\%file1% -md5 > update\%model%-%cust%\%file1:.zip=-md5.txt%
echo Checking MD5 hashes %file2%
bin\fciv.exe -add update\%model%-%cust%\%file2% -md5 > update\%model%-%cust%\%file2:.zip=-md5.txt%
echo Checking MD5 hashes %file3%
bin\fciv.exe -add update\%model%-%cust%\%file3% -md5 > update\%model%-%cust%\%file3:.zip=-md5.txt%
find "%md5-1%" /I "update\%model%-%cust%\%file1:.zip=-md5.txt%"
if errorlevel 1 (
    echo MD5-1 MISSMATCH
	echo Ending
	pause
	exit
) else (
	echo md5-1 ok continue
)
find "%md5-2%" /I "update\%model%-%cust%\%file2:.zip=-md5.txt%"
if errorlevel 1 (
    echo MD5-2 MISSMATCH
	echo Ending
	pause
	exit
) else (
	echo md5-2 ok continue
)
find "%md5-3%" /I "update\%model%-%cust%\%file3:.zip=-md5.txt%"
if errorlevel 1 (
    echo MD5-3 MISSMATCH
	echo Ending
	pause
	exit
) else (
	echo md5-3 ok continue
)
echo(
echo Next line cleans the extra files created during download
echo If you do not want all txt files removed, change the last line on script
pause
::del "%~dp0\output*.txt"
del "%~dp0\*.txt"
exit
