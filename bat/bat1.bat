@echo off
echo hello

if %1==debug (
	goto debug
) else (
	goto run
)

:debug
echo debug

:run
echo run

set "name=����"
echo.%name%

set /p name=������������֣�Ȼ��س�:
echo ��������ǣ�%name%

shift
echo %1	

for %%i in (bat*.*) do echo %%i

for /d %%i in (c:\*) do echo %%i 
















