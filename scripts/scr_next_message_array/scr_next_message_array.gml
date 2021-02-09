/// @description scr_next_message_array()
function scr_next_message_array() {

	/*
	// Fills next_text_array with each individual character

	   Checks at the end of each word if there is enough horizontal room
	   to fit the word on the line.  Add a \n character if not or a space then adds
	   the next word into an array.
	*/
	//Reset array in case previous message was longer
	next_text_array = array_create(0);

	//Makes sure that the next text is a string and cast it to such if not
	if (!is_string(next_text))
	{
		next_text = string(next_text);	
	}

	//Temporary string to test length for line breaks
	var test_string_length = "";
	var last_word = "";
	var next_sentence_length = string_length(next_text);

	for (var i = 1; i <= next_sentence_length; i++)
	{
		//Get next character in string
		var next_char = string_char_at(next_text, i);
		test_string_length += next_char;
		if (next_char == " " || i == next_sentence_length)//space or end of sentence
		{
			if (i == next_sentence_length) last_word += next_char;	//add final character to word if end of sentence
			//If word makes the line longer than size then add a line return
			if (string_width(test_string_length) > (box_width - (2 * margin)))
			{
				next_text_array[array_length_1d(next_text_array)] = "\n";
				test_string_length = last_word;
			}
			else 
			{
				if (array_length_1d(next_text_array) > 0) {next_text_array[array_length_1d(next_text_array)] = " ";}
			}
			//Add previous word
			for (var w = 1; w <= string_length(last_word); w++)
			{
				next_text_array[array_length_1d(next_text_array)] = string_char_at(last_word, w);
			}
		
			last_word= "";
		}
		else //if not space then add to last word
		{
			last_word += next_char;	
		}
	}	

	next_text = "";




}
