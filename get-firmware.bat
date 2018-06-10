@echo off
if not defined in_subprocess (cmd /k set in_subprocess=y ^& %0 %*) & exit )
title 		Firmware Grabber
adb shell getprop ro.product.model > device-model.txt
adb shell getprop ro.product.CustCVersion > cust-version.txt
set /p model=<device-model.txt
set /p cust=<cust-version.txt
bin\wget -O filelist.txt http://pro-teammt.ru/projects/hwff/info/ff_get_data_android.php?model_json=%model%
call bin\jrepl "([\s\S]*?)%cust%([\s\S]*)" "stdout.Write($2);$1" /m /j /f filelist.txt /o output1.txt >output2.txt
call bin\jrepl "([\s\S]*?)FullOTA([\s\S]*)" "stdout.Write($2);$1" /m /j /f output2.txt /o output3.txt >output4.txt
call bin\jrepl "([\s\S]*?)filelist_link([\s\S]*)" "stdout.Write($2);$1" /m /j /f output4.txt /o output5.txt >output6.txt
call bin\jrepl "([\s\S]*?)http://([\s\S]*)" "stdout.Write($2);$1" /m /j /f output6.txt /o output7.txt >output8.txt
call bin\jrepl "([\s\S]*?).xml([\s\S]*)" "stdout.Write($2);$1" /m /j /f output8.txt /o dladdress.txt >output9.txt
set /p dladress=<dladdress.txt
set base=http://%dladress:filelist=%
bin\wget "http://%dladress%.xml" -O update_list.txt
call bin\jrepl "([\s\S]*?)package=([\s\S]*)" "stdout.Write($2);$1" /m /j /f update_list.txt /o output10.txt >output11.txt
call bin\jrepl "([\s\S]*?)subpath=([\s\S]*)" "stdout.Write($2);$1" /m /j /f output11.txt /o file1.txt >output12.txt
call bin\jrepl "([\s\S]*?)/>([\s\S]*)" "stdout.Write($2);$1" /m /j /f output12.txt /o subpath1.txt >output13.txt
call bin\jrepl "([\s\S]*?)package=([\s\S]*)" "stdout.Write($2);$1" /m /j /f output13.txt /o output14.txt >output15.txt
call bin\jrepl "([\s\S]*?)subpath=([\s\S]*)" "stdout.Write($2);$1" /m /j /f output15.txt /o file2.txt >output16.txt
call bin\jrepl "([\s\S]*?)/>([\s\S]*)" "stdout.Write($2);$1" /m /j /f output16.txt /o subpath2.txt >output17.txt
call bin\jrepl "([\s\S]*?)package=([\s\S]*)" "stdout.Write($2);$1" /m /j /f output17.txt /o output18.txt >output19.txt
call bin\jrepl "([\s\S]*?)subpath=([\s\S]*)" "stdout.Write($2);$1" /m /j /f output19.txt /o file3.txt >output20.txt
call bin\jrepl "([\s\S]*?)/>([\s\S]*)" "stdout.Write($2);$1" /m /j /f output20.txt /o subpath3.txt >output21.txt
set /p file1=<file1.txt
set /p file2=<file2.txt
set /p file3=<file3.txt
set link1=%file1:"=%
set link2=%file2:"=%
set link3=%file3:"=%
set /p sub1=<subpath1.txt
set /p sub2=<subpath2.txt
set /p sub3=<subpath3.txt
set subpath1=%sub1:"=%
set subpath2=%sub2:"=%
set subpath3=%sub3:"=%
if exist dpath.txt del dpath.txt
if exist md5.txt del md5.txt
if exist merged-file.txt del merged-file.txt
for /f %%a in ('bin\XML.EXE sel -t -v "//dpath" update_list.txt') do (
	echo %%a >> dpath.txt
)
for /f %%a in ('bin\XML.EXE sel -t -v "//md5" update_list.txt') do (
	echo %%a >> md5.txt
)
call bin\merge.bat
for /f "tokens=2" %%i in ('findstr "%link1%" "merged-file.txt"') do set md5-1=%%i
for /f "tokens=2" %%i in ('findstr "%link2%" "merged-file.txt"') do set md5-2=%%i
for /f "tokens=2" %%i in ('findstr "%link3%" "merged-file.txt"') do set md5-3=%%i
echo %base%%subpath1%/%link1%  MD5- %md5-1%
echo %base%%subpath2%/%link2% MD5- %md5-2%
echo %base%%subpath3%/%link3% MD5- %md5-3%
bin\wget -P update %base%%subpath1%/%link1%
bin\wget -P update %base%%subpath2%/%link2%
bin\wget -P update %base%%subpath3%/%link3%
echo Checking MD5 hashes
bin\fciv.exe update\%link1% -md5 > update\%link1:.zip=-md5.txt%
bin\fciv.exe update\%link2% -md5 > update\%link2:.zip=-md5.txt%
bin\fciv.exe -add update\%link3% -md5 > update\%link3:.zip=-md5.txt%
find "%md5-1%" /I "update\%link1:.zip=-md5.txt%"
if errorlevel 1 (
    echo MD5-1 MISSMATCH
	echo Ending
	pause
	exit
) else (
	echo md5-1 ok continue
)
find "%md5-2%" /I "update\%link2:.zip=-md5.txt%"
if errorlevel 1 (
    echo MD5-2 MISSMATCH
	echo Ending
	pause
	exit
) else (
	echo md5-2 ok continue
)
find "%md5-3%" /I "update\%link3:.zip=-md5.txt%"
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
