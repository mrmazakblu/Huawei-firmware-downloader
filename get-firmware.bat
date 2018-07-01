@echo off
cls
color 0e
set ver=V-10.6
title 		Firmware Grabber %ver%
if not defined in_subprocess (cmd /k set in_subprocess=y ^& %0 %*) & exit )
:start
cls
IF EXIST "%~dp0bin" SET PATH=%PATH%;"%~dp0\bin"
if exist %~dp0*.txt del %~dp0*.txt
if exist %userprofile%\Desktop\UPDATE\%model%-%cust%\changelog.xml del  %userprofile%\Desktop\UPDATE\%model%-%cust%\changelog.xml
IF EXIST "%~dp0update-logs" del "%~dp0update-logs" /Q
IF NOT EXIST "%~dp0update-logs" mkdir "%~dp0update-logs"
cls
echo(
echo(
cecho  {0c} ***************************************************{#}{\n}
cecho   *  {0E}   DO YOU WANT TO DOWNLOAD LATEST SCRIPT {#}      *{\n}
cecho   *  {06}   OR RUN CURRENT VERSION??  %ver%           {#}       *{\n}
cecho   {0c}***************************************************{#}{\n}
echo(
echo( 
CHOICE  /C 12 /M "   1=RUN  or   2=UPDATE"
IF ERRORLEVEL 2 GOTO update
IF ERRORLEVEL 1 GOTO run
:update
IF EXIST "%~dp0grabber-update" rd /s /q "%~dp0grabber-update" /Q
IF NOT EXIST "%~dp0grabber-update" mkdir "%~dp0grabber-update"
echo @echo off > %~dp0grabber-update\grabber-update.bat
echo( >> %~dp0grabber-update\grabber-update.bat
echo timeout 10 >> %~dp0grabber-update\grabber-update.bat
echo IF EXIST "%~dp0grabber-update\Huawei-firmware-downloader-master\bin" rd /s /q "%~dp0bin" /Q >> %~dp0grabber-update\grabber-update.bat
echo IF EXIST %~dp0grabber-update\Huawei-firmware-downloader-master\bin echo d ^| xcopy /Y /E /H  %~dp0grabber-update\Huawei-firmware-downloader-master\bin %~dp0bin >> %~dp0grabber-update\grabber-update.bat
echo echo f ^| xcopy /Y %~dp0get-firmware.bat %~dp0get-firmware.bak >> %~dp0grabber-update\grabber-update.bat
echo IF EXIST %~dp0grabber-update\Huawei-firmware-downloader-master\get-firmware.bat echo f ^| xcopy /Y %~dp0grabber-update\Huawei-firmware-downloader-master\get-firmware.bat %~dp0get-firmware.bat >> %~dp0grabber-update\grabber-update.bat
echo timeout 5 >> %~dp0grabber-update\grabber-update.bat
echo start %~dp0get-firmware.bat >> %~dp0grabber-update\grabber-update.bat
echo timeout 2 >> %~dp0grabber-update\grabber-update.bat
echo exit >> %~dp0grabber-update\grabber-update.bat
echo Downloading files from GitHub Repo
bin\wget.exe -P %~dp0grabber-update\ https://github.com/mrmazakblu/Huawei-firmware-downloader/archive/master.zip 2> update-logs\tool-download-log.txt
%~dp0bin\unzip.exe -u %~dp0grabber-update\master.zip -d %~dp0grabber-update\
start %~dp0grabber-update\grabber-update.bat
echo DONE WITH DOWNLAD. EXITING NOW TO UPDATE THE BIN AND THIS SCRIPT
timeout 3
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
CHOICE  /C 12 /M "USE ADB TO GET MODEL NUMBER?   1=Yes  or   2=NO"
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
cecho   *  {08}    CUST REGION IS SeT TO %cust%         {#}      *{\n}
cecho   *{0E}DO YOU WANT TO CONTINUE WITH THESE SETTINGS? {#}    *{\n}
cecho   *{0E}SELECT #2 FOR NO TO SET DIFFERENT MODEL NUMBER{#}   *{\n}
echo   ***************************************************
echo(
echo( 
CHOICE  /C 12 /M "CONTINUES WITH THESE SETTINGS  1=Yes  or   2=NO"
IF ERRORLEVEL 2 GOTO input
IF ERRORLEVEL 1 GOTO default
:input
cls
set model=
set cust=
:deviceLOOP
IF EXIST "%~dp0bin\Device-List.txt" del "%~dp0bin\Device-List.txt" /Q
IF NOT EXIST "%~dp0bin\Device-List.txt" ( echo Line_1   ALP
echo Line_2   BKL
echo Line_3   BLA
echo Line_4   BLN
echo Line_5   BND   
echo Line_6   CMR
echo Line_7   DUK
echo Line_8   FIG
echo Line_9   LLD
echo Line_10   LON
echo Line_11   MHA
echo Line_12   PRA
echo Line_13   RNE
echo Line_14   SHT
echo Line_15   STF
echo Line_16   VKY
echo Line_17   VTR
echo Line_18   WAS
echo Line_M   Other Manual Entry
echo( )  > %~dp0bin\Device-List.txt
IF EXIST "%~dp0bin\model-List.txt" del "%~dp0bin\model-List.txt" /Q
IF NOT EXIST "%~dp0bin\model-List.txt" ( echo Line_1   AL00
echo Line_2   AL09
echo Line_3   AL10
echo Line_4   AL19
echo Line_5   L00  
echo Line_6   L01
echo Line_7   L02
echo Line_8   L03
echo Line_9   L09
echo Line_10   L21
echo Line_11   L22
echo Line_12   L23
echo Line_13   L24
echo Line_14   L29
echo Line_15   L31
echo Line_16   L34
echo Line_17   LA1
echo Line_18   LX1
echo Line_19   LX2
echo Line_20   LX3
echo Line_21   TL00
echo Line_22   TL10
echo Line_23   W09
echo Line_24   W19
echo Line_M   Other Manual Entry
echo( )  > %~dp0bin\model-List.txt
IF EXIST "%~dp0bin\Region-List.txt" del "%~dp0bin\Region-List.txt" /Q
IF NOT EXIST "%~dp0bin\Region-List.txt" ( echo Line_1   C432 Europe
echo Line_2   C185 Middle East
echo Line_3   C10 Russia
echo Line_4   C675 India
echo Line_5   C00 China
echo Line_6   C567 USA
echo Line_M   Other Manual Entry
echo( )  > %~dp0bin\Region-List.txt
:deviceLOOP
color 0A
cls
	::Load up our menu selections for device code
cecho  {0c} ***************************************************{#}{\n}
	echo.--------------------------------------------------------------------------------
	for /f "tokens=* delims=_ " %%A in ('"findstr /b /c:"Line" "%~dp0bin\Device-List.txt""') do echo.  %%A
	set choice=
	echo.&set /p choice= TYPE LINE NUMBER OF DEVICE CODE or hit ENTER to exit: ||GOTO:end
	echo download choice = %choice%
IF %choice% == m ( goto other )
IF %choice% == M ( goto other )
for /f "tokens=2 delims=_ " %%A in ('"findstr /b /c:"Line" "%~dp0bin\Device-List.txt""') do echo %%A >> %~dp0device-choice.txt
	find "%choice%" "%~dp0device-choice.txt" > nul
if errorlevel 1 (
    echo Made Bad selection 
	echo Type in only the Number from Line_*
	pause
	cls
	goto deviceLOOP
) else (
	echo APPLYING CHOICE AND CONTINUEING AFTER PRESS ANY BUTTON
)
for /f "tokens=2" %%A in ('"findstr /b /c:"Line_%choice%" "%~dp0bin\Device-List.txt""') do set   part-A=%%A
:modelLOOP
color 0A
cls
	::Load up our menu selections for model code
cecho  {0c} ***************************************************{#}{\n}
	echo.--------------------------------------------------------------------------------
	for /f "tokens=* delims=_ " %%A in ('"findstr /b /c:"Line" "%~dp0bin\model-List.txt""') do echo.  %%A
	set choice=
	echo.&set /p choice= TYPE LINE NUMBER OF MODEL CODE or hit ENTER to exit: ||GOTO:end
	echo download choice = %choice%
IF %choice% == m ( goto other )
IF %choice% == M ( goto other )
for /f "tokens=2 delims=_ " %%A in ('"findstr /b /c:"Line" "%~dp0bin\model-List.txt""') do echo %%A >> %~dp0model-choice.txt
	find "%choice%" "%~dp0model-choice.txt" > nul
if errorlevel 1 (
    echo Made Bad selection 
	echo Type in only the Number from Line_*
	pause
	cls
	goto modelLOOP
) else (
	echo APPLYING CHOICE AND CONTINUEING AFTER PRESS ANY BUTTON
)
for /f "tokens=2" %%A in ('"findstr /b /c:"Line_%choice%" "%~dp0bin\model-List.txt""') do set   part-B=%%A
set model=%part-A%-%part-B%
:regionLOOp
color 0A
cls
	::Load up our menu selections for region code
cecho  {0c} ***************************************************{#}{\n}
	echo.--------------------------------------------------------------------------------
	for /f "tokens=* delims=_ " %%A in ('"findstr /b /c:"Line" "%~dp0bin\Region-List.txt""') do echo.  %%A
	set choice=
	echo.&set /p choice= TYPE LINE NUMBER OF REGION CODE or hit ENTER to exit: ||GOTO:end
	echo download choice = %choice%
IF %choice% == m ( goto other )
IF %choice% == M ( goto other )
for /f "tokens=2 delims=_ " %%A in ('"findstr /b /c:"Line" "%~dp0bin\Region-List.txt""') do echo %%A >> %~dp0region-choice.txt
	find "%choice%" "%~dp0region-choice.txt" > nul
if errorlevel 1 (
    echo Made Bad selection 
	echo Type in only the Number from Line_*
	pause
	cls
	goto regionLOOP
) else (
	echo APPLYING CHOICE AND CONTINUEING AFTER PRESS ANY BUTTON
)
for /f "tokens=2" %%A in ('"findstr /b /c:"Line_%choice%" "%~dp0bin\Region-List.txt""') do set cust=%%A
goto default
:other
SET /P model="What model would you like to Download for? Ex "BND-L21"  =  "
SET /P cust="What region code would you like to Download for? Ex "C10"  =  "
goto default
:default
echo SELECTION IS SET TO
echo %model% %cust%
timeout 3
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
echo Downloading Info For %model%
%~dp0bin\wget -O %~dp0filelist.txt http://pro-teammt.ru/projects/hwff/info/ff_get_data_android.php?model_json=%model% 2> update-logs\download-log.txt
call bin\jrepl "{" "\n{" /M /X /f "%~dp0\filelist.txt" /o -
call bin\jrepl " , " " : " /M /X /f "%~dp0\filelist.txt" /o -
setlocal EnableDelayedExpansion
for /F "delims=" %%A in ('type "%~dp0\filelist.txt"') do (
  set row=%%A
  set row=!row:"=!
  echo.!row!>> "%~dp0\myText.txt"
)
for /f "tokens=* delims=" %%a in ('findstr "%cust%" "%~dp0myText.txt"') do echo %%a >> %~dp0cust-firmware.txt
for /f "tokens=* delims=" %%a in ('findstr "FullOTA" "%~dp0cust-firmware.txt"') do echo %%a >> %~dp0full-firmware.txt
for /f "tokens=6,7,8 delims=:" %%a in ('findstr "changelog_link" "%~dp0full-firmware.txt"') do echo %%a:%%b:%%c >> %~dp0dladdress-firmware.txt
for /f "tokens=2 delims=:" %%a in ('findstr "changelog_link" "%~dp0full-firmware.txt"') do echo %%a >> %~dp0version-firmware.txt
call bin\jrepl " " "" /M /X /f "%~dp0dladdress-firmware.txt" /o -
set x=1
for /f "delims=" %%a in (%~dp0version-firmware.txt) do (
  echo Line_!x! %%a >> %~dp0version-numbered.txt
  set /a x=!x!+1 )
set x=1
for /f "delims=" %%a in (%~dp0dladdress-firmware.txt) do (
  echo Line_!x! %%a >> %~dp0dladdress-numbered.txt
  set /a x=!x!+1 )
For /F %%A In ('Find /C "http"^<"%~dp0dladdress-firmware.txt"') Do (
    Set "mlc=%%A" )
find "changelog.xml" /I "%~dp0dladdress-firmware.txt" > nul
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
	for /f "tokens=* delims=_ " %%A in ('"findstr /b /c:"Line" "%~dp0version-numbered.txt""') do echo.  %%A
	set choice=
	echo.&set /p choice= Please make a selection ONLY INPUT LINE NUMBER or hit ENTER to exit: ||GOTO:end
	echo download choice = %choice%
	for /f "tokens=2 delims=_ " %%A in ('"findstr /b /c:"Line" "%~dp0dladdress-numbered.txt""') do echo %%A >> %~dp0good-choice.txt
	find "%choice%" "%~dp0good-choice.txt" > nul
if errorlevel 1 (
    echo Made Bad selection 
	echo Type in only the Number from Line_*
	pause
	cls
	goto menuLOOP
) else (
	echo APPLYING CHOICE AND CONTINUEING AFTER PRESS ANY BUTTON
)
for /f "tokens=2" %%A in ('"findstr /b /c:"Line_%choice%" "%~dp0dladdress-numbered.txt""') do set   dladress=%%A
for /f "tokens=2 delims=, " %%A in ('"findstr /b /c:"Line_%choice%" "%~dp0version-numbered.txt""') do set newversion=%%A
set base=%dladress:changelog.xml=%
echo Downloading Filelist
%~dp0bin\wget "%base%filelist.xml" -O %~dp0UPDATE_list.txt 2> update-logs\filelist-download-log.txt
find "xml" /I "%~dp0UPDATE_list.txt" > nul
if errorlevel 1 (
    echo UPDATE_list.txt MISSING information
	echo Going To Start Again
	pause
	goto start
) else (
	echo UPDATE_list.txt ok continue
)
for /f %%a in ('%~dp0bin\XML.EXE sel -t -v "//dpath" %~dp0UPDATE_list.txt') do (
	echo %%a >> %~dp0dpath.txt
)
for /f %%a in ('%~dp0bin\XML.EXE sel -t -v "//md5" %~dp0UPDATE_list.txt') do (
	echo %%a >> %~dp0md5.txt
)
call %~dp0bin\merge.bat
for /f "tokens=7,9 delims== " %%a in ('findstr "package=" "%~dp0UPDATE_list.txt"') do echo %%b %%a >> %~dp0subpath-file.txt && echo %%a >> %~dp0file.txt
call %~dp0bin\jrepl "> " "" /M /X /f "%~dp0subpath-file.txt" /o -
call %~dp0bin\jrepl "\x22" "" /M /X /f "%~dp0subpath-file.txt" /o -
call %~dp0bin\jrepl "\x22" "" /M /X /f "%~dp0file.txt" /o -
< %~dp0subpath-file.txt ( set /P "link1=" & set /P "link2=" & set /P "link3=" )
< %~dp0file.txt ( set /P "file1=" & set /P "file2=" & set /P "file3=" )
for /f "tokens=2" %%i in ('findstr "%file1%" "%~dp0merged-file.txt"') do set md5-1=%%i
for /f "tokens=2" %%i in ('findstr "%file2%" "%~dp0merged-file.txt"') do set md5-2=%%i
for /f "tokens=2" %%i in ('findstr "%file3%" "%~dp0merged-file.txt"') do set md5-3=%%i
echo %base%%link1%  MD5- %md5-1%
echo %base%%link2% MD5- %md5-2%
echo %base%%link3% MD5- %md5-3%
echo( 
echo   ***************************************************
cecho   * {0B}       CURRENT version on phone is{#}              *{\n}
cecho   * {0E}           %version% {#}             *{\n}
cecho   * {0B}       NEW VERSION TO DOWNLOAD IS {#}              *{\n}
cecho   * {0A}           %newversion% {#}         *{\n}
cecho   * {0E}         Download 1=Yes 2=No{#}                    *{\n}
echo   ***************************************************
set save=%userprofile%\Desktop\UPDATE\%model%-%cust%\%newversion%
echo( 
CHOICE  /C 12 /M "Download Now 1=Yes  or 2=NO"
IF ERRORLEVEL 2 GOTO test
IF ERRORLEVEL 1 GOTO continue
:continue
echo DOWNLOADING %link1%
%~dp0bin\wget -P %save% %base%%link1% 2> update-logs\%link1%-download-log.txt
echo DOWNLOADING %link2%
%~dp0bin\wget -P %save% %base%%link2% 2> update-logs\%link2%-download-log.txt
echo DOWNLOADING %link3%
%~dp0bin\wget -P %save% %base%%link3% 2> update-logs\%link3%-download-log.txt
:test
echo Checking MD5 hashes %file1%
%~dp0bin\fciv.exe -add %save%\%file1% -md5 > %save%\%file1:.zip=-md5.txt%
echo Checking MD5 hashes %file2%
%~dp0bin\fciv.exe -add %save%\%file2% -md5 > %save%\%file2:.zip=-md5.txt%
echo Checking MD5 hashes %file3%
%~dp0bin\fciv.exe -add %save%\%file3% -md5 > %save%\%file3:.zip=-md5.txt%
find "%md5-1%" /I "%save%\%file1:.zip=-md5.txt%" > nul
if errorlevel 1 (
    echo MD5-1 MISSMATCH
	echo Something Has Gone Wrong
	echo Update %file1% does not match MD5
	echo Tool will continue, But you should not use %file1%
	pause
) else (
	echo md5-1 ok continue
)
find "%md5-2%" /I "%save%\%file2:.zip=-md5.txt%" > nul
if errorlevel 1 (
    echo MD5-2 MISSMATCH
	echo Something Has Gone Wrong
	echo Update %file2% does not match MD5
	echo Tool will continue, But you should not use %file2%
	pause
) else (
	echo md5-2 ok continue
)
find "%md5-3%" /I "%save%\%file3:.zip=-md5.txt%" > nul
if errorlevel 1 (
    echo MD5-3 MISSMATCH
	echo Something Has Gone Wrong
	echo Update %file3% does not match MD5
	echo Tool will continue, But you should not use %file3%
	pause
) else (
	echo md5-3 ok continue
)
echo( 
echo   ***************************************************
cecho   * {0B}      EXTRACT IMAGES FROM UPDATE.APP  {#}     *{\n}
cecho   * {0E}                             {#}              *{\n}
cecho   * {0B}                             {#}              *{\n}
cecho   * {0A}                             {#}              *{\n}
cecho   * {0E}                             {#}              *{\n}
echo   ***************************************************
echo( 
CHOICE  /C 12 /M "EXTRACT IMAGES Now 1=Yes  or 2=NO"
IF ERRORLEVEL 2 GOTO transfer-sdcard
IF ERRORLEVEL 1 GOTO extract
echo(
:extract
set working=%~dp0
cd %save%
%working%bin\unzip.exe -u %save%\%file1% -d %save%\update1\
%working%bin\unzip.exe -u %save%\%file2% -d %save%\update2\
%working%bin\unzip.exe -u %save%\%file3% -d %save%\update3\
echo perl %working%split_updata.pl-master\splitupdate %save%\update1\UPDATE.APP | call %working%strawberry-perl-5.26.2.1-64bit-portable\portableshell.bat
echo perl %working%split_updata.pl-master\splitupdate %save%\update2\UPDATE.APP | call %working%strawberry-perl-5.26.2.1-64bit-portable\portableshell.bat
echo perl %working%split_updata.pl-master\splitupdate %save%\update3\UPDATE.APP | call %working%strawberry-perl-5.26.2.1-64bit-portable\portableshell.bat
cd %working%
:transfer-sdcard
for /f "tokens=5 delims=/:" %%i in ('adb shell ls /dev/block/bootdevice/by-name/recovery') do set recovery=%%i
echo %recovery%
IF "%recovery%" == "bootdevice" (
	echo Partition layout Does not match Nougat
	set HWOTA=HWOTA8)
set recovery=""
for /f "tokens=5 delims=/:" %%i in ('adb shell ls /dev/block/bootdevice/by-name/recovery_ramdisk') do set recovery=%%i
echo %recovery%
IF "%recovery%" == "bootdevice" (
	echo Partition layout Does not match Oreo
	set HWOTA=HWOTA7)
echo( 
echo   ***************************************************
cecho   * {0B}     Partition table shows you need to use %HWOTA%{#}      *{\n}
cecho   * {0E}      {#}                                                  *{\n}
cecho   * {0B}      {#}                                                  *{\n}
cecho   * {0A}      {#}                                                  *{\n}
cecho   * {0E}         Move To SDCARD  1=Yes 2=No{#}                     *{\n}
echo   ***************************************************
echo( 
CHOICE  /C 12 /M "Move Download to SDCARD Now 1=Yes  or 2=NO"
IF ERRORLEVEL 2 GOTO donotmove
IF ERRORLEVEL 1 GOTO move
echo(
:donotmove
goto end
:move
adb shell mkdir /mnt/ext_sdcard/%HWOTA%
:move_1
adb push %save%\%file1% /mnt/ext_sdcard/%HWOTA%
:move_2
adb push %save%\%file2% /mnt/ext_sdcard/%HWOTA%
:move_3
adb push %save%\%file3% /mnt/ext_sdcard/%HWOTA%
adb shell md5sum /mnt/ext_sdcard/%HWOTA%/*.zip > %~dp0moved-updates-md5.txt
find "%md5-1%" /I "%~dp0moved-updates-md5.txt" > nul
if errorlevel 1 (
    echo MD5-1 MISSMATCH
	echo Something went wrong during the file move
	echo MD5 check done after download must have been 
	echo OK, or the script would have stopped before
	echo Starting the move over again
	pause
	GOTO:move_1
) else (
	echo md5-1 ok continue
)
find "%md5-2%" /I "%~dp0moved-updates-md5.txt" > nul
if errorlevel 1 (
    echo MD5-2 MISSMATCH
	echo Something went wrong during the file move
	echo MD5 check done after download must have been 
	echo OK, or the script would have stopped before
	echo Starting the move over again
	pause
	GOTO:move_2
) else (
	echo md5-2 ok continue
)
find "%md5-3%" /I "%~dp0moved-updates-md5.txt" > nul
if errorlevel 1 (
    echo MD5-3 MISSMATCH
	echo Something went wrong during the file move
	echo MD5 check done after download must have been 
	echo OK, or the script would have stopped before
	echo Starting the move over again
	pause
	GOTO:move_3
) else (
	echo md5-3 ok continue
)
:end
:EOF
echo(
echo   *************************************************************************************
cecho   *{0E}UPDATE FILES HAVE BEEN SAVED TO UPDATE FOLDR ADDED TO YOUR Desktop{#}      *{\n}
cecho   *{0E}%userprofile%\Desktop\UPDATE\%model%-%cust%\%newversion%{#}            *{\n}
cecho   *{0E}Next line cleans the extra files created during download{#}                *{\n}
cecho   *{0E}If you do not want all txt files removed, change the last line on script{#}*{\n}
echo   *************************************************************************************
pause
del "%~dp0*.txt"
exit
