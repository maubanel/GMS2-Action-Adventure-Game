/// @description scr_fill_rest_of_array()
function scr_fill_rest_of_array() {

	/*
	// Fills the rest of array to skip typewrite effect
	*/

	next_text = "";
	for (var i = 0; i < array_length_1d(next_text_array); i++)
	{
		next_text+= next_text_array[i];	
	}	

	typewriter_index  = array_length_1d(next_text_array);

	next_text_array = array_create(1);

	typewriter_finished = true;



}
