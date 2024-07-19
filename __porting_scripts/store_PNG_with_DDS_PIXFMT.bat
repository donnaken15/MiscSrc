@echo off
for %%f in (%*) do (
	E:\GH2DX\Guitar-Hero-II-Deluxe-360-main\dependencies\magick\mogrify.exe -format dds "%%~f"
	ffmpeg -hide_banner -i "%%~dpnf.dds" "%%~dpnf.png" -y
	pngcrush -rem pHYs -ow -old "%%~dpnf.png"
	del "%%~dpnf.dds" /q
)