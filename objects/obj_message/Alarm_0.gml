/// @description Goes to next message or destroy dialogue box


/*
// If the text is in an array we will cycle through the messages.
// 

*/
if (type == 0)
{
	if (array_index + 1 < array_length_1d(text) && is_array(text) ) 
	{
		array_index++;
		next_text = text[array_index];
		draw_box = true;
		//Checks to see if another message is coming up
		if (array_index + 1 < array_length_1d(text))
		{
			message_ahead = true;	
		}
		else
		{
			message_ahead = false;	
		}
		//reset enter button being pressed
		pressed_enter = false;
	
		//Load up next message for typewriter
		scr_next_message_array();
		typewriter_index = 0;
		typewriter_finished = false;
	}
	else
	{
		if (alarm[1] < 0) 
		{	
			alarm[1] = 90;
			draw_box = false;
		}
	}
}

else if (type == 1)
{
	if (yes_button_index == 6)
	{
		next_text = text[1];
		text = next_text;
		type = 0;
		typewriter_index = 0;
		typewriter_finished = false;
		pressed_enter = false;
		scr_next_message_array();
	}
	else
	{
		next_text = text[2];
		text = next_text;
		type = 0;
		typewriter_index = 0;
		typewriter_finished = false;
		pressed_enter = false;
		scr_next_message_array();
	}
	
}

else if (type == 2)
{
		if (alarm[1] < 0) 
		{	
			alarm[1] = 90;
			draw_box = false;
			typewriter_finished = false;
		}	
}
