@echo off

if "%1" equ "" (

    echo Not enough paramethers. Use template FIRST_DIR SECOND_DIR to copy filed from FIRST_DIR to SECOND_DIR or use template FIRST_DIR to copy files from current directory to FIRST_DIR.

    echo Also use template FIRST_DIR SECOND_DIR createresult to create a .txt file with the result of copying. 
  
    exit /b 1

)

if "%2" equ "" (

    if not exist "%1" (
    	echo FIRST_DIR does not exist.
	exit /b 1
    )

    xcopy /e /h /k /q "D:\lab3\" "%1"

    exit /b 1

) else if "%3" equ "createresult" (
    
    if not exist "%1" (
    	echo FIRST_DIR does not exist.
	exit /b 1
    )

    if not exist "%2" (
    	echo SECOND_DIR does not exist.
	exit /b 1
    )

    xcopy /e /h /k /q "%1" "%2"

    echo COPY_SUCCESS > "%2"\result.txt

) else (

    if not exist "%1" (
    	echo FIRST_DIR does not exist.
	exit /b 1
    )

    if not exist "%2" (
    	echo SECOND_DIR does not exist.
	exit /b 1
    )

    xcopy /e /h /k /q "%1" "%2"

)

echo Files were copied successfully

exit /b 0
