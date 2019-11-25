/// @description Controls Input for Message Box

if (image_index != 0 && (type == 0 || type == 1))
{
	image_index = 0;
}
else if (image_index != 1 && type == 2)
{
	image_index = 1;	
}


//When typewriter is finished space goes to next message or ends
if (typewriter_finished)
{
	if (type == 2 && string_width(keyboard_string) < input_limit)
	{
		input[@0] = keyboard_string;	
		if (!alarm[3]) alarm[3] = cursor_delay;
	}
	if (keyboard_check_pressed(vk_enter)||  gamepad_button_check_pressed(global.gamepad[0], gp_face1))
	{
		//alarm0 loads up next message or hides display for 3 seconds to allow
		//player to move out of collision zone
		pressed_enter = true;
		if (alarm[0] < 0) alarm[0] = 1;
	}
	if (type == 1)
	//Select yes or no in question state
	if (type == 1 && (keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left) != 0
					||  gamepad_axis_value(global.gamepad[0], gp_axislh) != 0))
	{
		var x_axis = keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left);
		if (x_axis == 0)
		{
			x_axis = gamepad_axis_value(global.gamepad[0], gp_axislh);
		}
		show_debug_message(x_axis);
		show_debug_message(gamepad_axis_value(global.gamepad[0], gp_axislh));
		if (yes_button_index == 5 && x_axis > 0 )
		{
			yes_button_index = 4;
			no_button_index = 8;
		}
		else if (yes_button_index == 4 && x_axis < 0)
		{
			yes_button_index = 5;
			no_button_index = 7;
		}
	}	

}
else //Typewriter is not finished
{
	if (keyboard_check_pressed(vk_enter)||  gamepad_button_check_pressed(global.gamepad[0], gp_face1))
	{
		//Skips typewrite and fills in array
		scr_fill_rest_of_array();	
	}
}



//Checks to see if calling_id no longer collides with collision_id and if so close dialogue box
if (!collision_rectangle(calling_id.bbox_left, calling_id.bbox_top, calling_id.bbox_right, calling_id.bbox_bottom, player_id, false, true))
{
	if (alarm[1] < 0) alarm[1] = 10;	
	//If player leaves then we do not switch messages
	array_index = array_length_1d(text);
}

if (typewriter_delay)
{
	if (!alarm[2]) alarm[2] = typewriter_delay;
}
else
{
		//Skips typewrite and fills in array as there is no typewriting
		if (!typewriter_finished)
		{
			scr_fill_rest_of_array();	
		}
}

if (type == 0 || type == 2)
{
	//Set button frame
	if (!message_ahead && !pressed_enter) button_index = 0;
	else if (message_ahead && !pressed_enter) button_index = 2;
	else if (!message_ahead && pressed_enter) button_index = 1;
	else if (message_ahead && pressed_enter) button_index = 3;
}

else if (type == 1)
{
	//Set button frame if pressed
	if (pressed_enter && yes_button_index == 5)
	{
		yes_button_index = 6;
	}
	else if (pressed_enter && yes_button_index == 4)
	{
		no_button_index = 9;
	}
}