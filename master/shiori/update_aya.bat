@echo off
rem 此脚本只适用于Taromati2，除非你给你的人格也配备上ghost_terminal和reload快捷指令
cd /d %~dp0
ren aya.dll tmp
copy %1 aya.dll
..\saori\ghost_terminal.exe -c reload
timeout /t 7
del tmp
@echo on
