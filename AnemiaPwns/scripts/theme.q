/////////////////////////////////////////////////////////////////////
//
//	Example Q file. (also known as QB and QbScript)
//
//	This can contain functions and data that override original ones.
//
//	When running build.bat, this will get compiled and stored in the PAK.
//
//	FastGH3 Q Source Code:
//	https://github.com/donnaken15/FastGH3/tree/main/SOURCE/q/scripts
//	Example files with variables and scripts to override:
//	guitar_hud_2d_career.qb		-	Contains a list of sprites to display
//									for the HUD with positions and scaling. (singleplayer)
//	guitar_events.qb			-	Contains properties and code for note
//									hit and starpower particles and effects.
//	guitar_tweaks.qb			-	A set of variables to determine highway
//									perspective calculation and how sprites
//									on the highway get displayed.
//	When copying code to override, only copy what you need to edit.
//
//	Learn a little more about Q:
//	https://donnaken15.com/FastGH3/docs/NxDocs2/Q
//	User defined language/syntax/autocomplete for Notepad++ (x86):
//	https://gist.github.com/donnaken15/632b3124767d2df853ed719f3710d23c
//
/////////////////////////////////////////////////////////////////////

/* // delete this line to make below data get compiled when building

// data type examples
this_is_data = {
	a_number = 123
	a_number_with_decimals = 55.123
	text = 'Hello!'				// ASCII text (1-byte per char)
	unicode_text = "こんにちは"		// (2-byte per char)
	// this may not appear properly in game if the font
	// it's written in does not have the glyphs for it
	an_array = [ 1 2 3 4 5 ]
	a_structure = {
		more_data = 'QbScript is so cool'
		a_lot_more_data = [
			'Lorem ipsum' 'Example text'
			'The quick brown fox jumped over the lazy dog'
			'AaBbCcDdEeFf 0123456789'
		]
	}
}
// script example
script test_script
	printf 'Hello, world!'
endscript

/**///


