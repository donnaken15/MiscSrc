@echo off
set "OKNOTOK=|| goto :fail"
pushd "%~dp0"
echo [92m######   compile highway sprites   ######[0m
pushd highway
..\buildtex >nul
popd
del theme.scn.xen theme.tex.xen 2>nul
move "highway\__output.scn" "theme.scn.xen" >nul
move "highway\__output.tex" "theme.tex.xen" >nul
echo [92mDone![0m

if not exist sounds ( goto :nosounds )
echo.
echo [97m^<^<^<^<^<^<        GLOBAL_SFX.PAK       ^>^>^>^>^>^>[0m
echo [31m###### RENAMING SOUND FILES SRSLY  ######[0m
pushd sounds
mkdir zones zones\global_sfx 2>nul
rename *.mp3 *.wav.xen
echo [97m######        compiling PAK        ######[0m
..\pakdir . ..\global_sfx
:: actual cringe
rename *.wav.xen *.
rename *.wav *.mp3
popd
echo [92mDone![0m
if not exist "global_sfx.pak.xen" ( echo [91mthe built global_sfx.pak cannot be found[0m & goto :fail )
:nosounds


if not "%1"=="notimeout" "%WINDIR%\system32\timeout" /t 2
popd
exit /b

:fail
echo [91mOne of the commands errored. Aborting.[0m
pause
popd
exit /b
