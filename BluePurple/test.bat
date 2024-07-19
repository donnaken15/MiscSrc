@echo off
pushd "%~dp0"
cmd /c build.bat notimeout
set GAMEDIR=..\..\..\
pushd "%GAMEDIR%"
if exist "game.exe" (
	rem stupid
	fastgh3 -gfxswap "%~dp0theme.tex.xen" "DATA\ZONES\global.pak.xen"
	if exist "%~dp0global_sfx.pak.xen" ( copy "%~dp0global_sfx.pak.xen" "DATA\ZONES\global_sfx.pak.xen" /y )
	start "" "game.exe"
)
popd
popd
