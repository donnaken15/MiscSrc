Very important things and stuff

outdir.txt can point relatively or absolutely to a place in the instance of FastGH3 you run, and run the game after building this to test it (test.bat) (i.e. to point to DATA\ZONES of your game from C:\Program Files (x86)\FastGH3\THEMES\MyTheme, outdir.txt must be set to have "..\..\DATA\ZONES", with no quotes)

When using BMFont to generate entirely new fonts, save them to the fonts/ folder, and don't enable including kerning pairs. The build script will convert and package them for the game. If glyph proportions and spacing appear wrong in game, especially for monospace fonts, check "Equalize the cell heights" and "Force offsets to zero" in BMFont's export options.

For some reason (as of now), sustain textures must be saved as DDS, otherwise the game will crash.