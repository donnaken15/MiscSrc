@echo off
for %%f in (%*) do (
	pngcrush -rem pHYs -ow -old "%%~f"
)