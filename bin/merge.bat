@ECHO Off

set file1=dpath.txt
set file2=md5.txt
GOTO :Main

:StartMerge
    SET /P _a=<%1
    SET /P _b=<%2

    ECHO %_a% %_b% >> merged-file.txt

    DEL %1 %2

    GOTO :EndMerge

:CleanUp
    SET _LinesIn1=
    SET _LinesIn2=

    SET _a=
    SET _b=

	GOTO :EOF

:Main
    SET _LinesIn1=0
    SET _LinesIn2=0

    FOR /F "delims=: tokens=1,*" %%i IN ('findstr /n "^" %file1%') DO (
        ECHO.%%j>_c1n%%i
        SET /A _LinesIn1+=1
    )

    FOR /F "delims=: tokens=1,*" %%i IN ('findstr /n "^" %file2%') DO (
        ECHO.%%j>_c2n%%i
        SET /A _LinesIn2+=1
    )

    IF %_LinesIn1% NEQ %_LinesIn2% (
        ECHO Cannot merge files; mismatched line count:-
        ECHO   1.txt - %_LinesIn1% lines
        ECHO   2.txt - %_LinesIn2% lines

        DEL _c*

        GOTO :CleanUp
    )

    FOR /L %%n IN (1, 1, %_LinesIn1%) DO (
        CALL :StartMerge _c1n%%n _c2n%%n

        :EndMerge
        REM No-op to avoid ") was unexpected at this time." error
    )

    GOTO :CleanUp