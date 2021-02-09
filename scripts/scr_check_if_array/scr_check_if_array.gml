/// @description scr_check_if_array()
/// @arg {real} i				index of array
/// @arg {string} text			Text to draw in array or string
function scr_check_if_array(argument0, argument1) {

	/*
	// checks to see if text is in an array and there is more than one string 
	// left to display.

	*/

	if (argument0 + 1 < array_length_1d(argument1) && is_array(argument1) )
	{
		return true;	
	}

	return false;


}
