@echo off
echo ping
ping -n 5 127.0.0.1 >nul
echo timeout before
timeout 10 > NUL
echo timeout after