@echo off
echo %0
echo %~d0
echo %~p0
echo %~dp0
echo %~x0
echo %~s0
echo %~sp0

@rem 文件名
echo %0
call :test
goto :eof

echo =======test==
:test
echo %0
@rem 任务名 test
echo %~0
@rem 获取脚本名
echo %~n0

set x=xxxxx
call :sub 10
echo %x%
exit /b

echo ===sub=======
:sub
setlocal
set /a x=%1 + 1
echo %x%
endlocal
exit /b