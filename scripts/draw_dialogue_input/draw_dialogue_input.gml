/// @description draw_dialogue_question()
/// @arg {real} x				X position (x)
/// @arg {real} y				Y position (y)
/// @arg {string} question		String in the form of a question asking for player input
/// @arg {string} variable		Global variable holding answer to the question
/// @arg {real} id				Intance id of calling object (id)
/// @arg {reql} player_id		Intance id of player triggering box		
/// @arg {real} space_above		how many pixels above player defaults to 32
/// @arg {real} typewrite_delay	Delay in frames of how long a pause between letters
function draw_dialogue_input(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7) {


	// You can write your code in this editor

	/*

	Draws text above player.  Assumes origin is top left and limits the text box 
	from leaving the render window.

	Accepts an array of text or a single string.  


	Press Space gets next text prompt if an array, and exits text box after they have all been displayed. If it is
	just a string it terminates the text box.

	Assumes there is no variable in calling object called "new_message_box" as this 
	is not local to this function and global to the game object.

	Does not check for height of text fitting inside message box, so you need to 
	make sure that it doesn't overrun the box.

	If typewrite_delay is set to 0 then there is no delay, the entire message 
	will be displayed at once.  This agrument is set in frames.




	*/

	if (!variable_instance_exists(id, "new_message_box")) new_message_box = noone;

	if (!instance_exists(new_message_box))
	{
	
		var x_pos = 0;
		var y_pos = 0;

		if (is_real(argument0))
		{
			x_pos = argument0;	
		}

		if (is_real(argument1))
		{
			y_pos = argument1;	
		}

		var text = argument2;

		var input = argument3;

		if (!is_array(input))
		{
			show_error("show_dialogue_input() requires an array passed as an input and NOT a string.", false);
		}


		var calling_id = argument4;

		var player_id = argument5;

		var space_above = 32;

		if (is_real(argument6))
		{
			space_above = argument6;
		}

		var typewriter_delay = argument7;


		new_message_box = instance_create_depth(x_pos + sprite_width * .5, y_pos, 0, obj_message);
		//If text is not an array set next_text
		if (is_array(text))
		{
			new_message_box.next_text = text[0];
		}
		else
		{
			new_message_box.next_text = text;
		}
	
		new_message_box.text = text;
		new_message_box.array_index = 0;
		new_message_box.input = input;
	
		new_message_box.calling_id = calling_id;
		new_message_box.player_id = player_id;
		new_message_box.type = 2;
		new_message_box.space_above = space_above;
		new_message_box.typewriter_delay = typewriter_delay;
	
		// Checks to see if there is more than one message in array
		with (new_message_box)
		{
			scr_next_message_array();
		}
		return new_message_box.type;
	} 

	else
	{
		return new_message_box.type;	
	}



}
