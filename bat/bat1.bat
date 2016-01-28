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

set "name=张三"
echo.%name%

set /p name=请输入你的名字，然后回车:
echo 你的名字是：%name%

shift
echo %1	

for %%i in (bat*.*) do echo %%i

for /d %%i in (c:\*) do echo %%i 
















