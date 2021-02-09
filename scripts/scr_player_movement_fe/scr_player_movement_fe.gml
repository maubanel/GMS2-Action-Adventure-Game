function scr_player_movement_fe() {
	var x_axis = 0;

	if (keyboard_check(vk_left) || keyboard_check(vk_right))
	{
		x_axis = keyboard_check(vk_right) - keyboard_check(vk_left);	
	}

	// Joystick controls if no keyboard input
	if (x_axis == 0)
	{
		x_axis = gamepad_axis_value(global.gamepad[0], gp_axislh);
	
		if (x_axis != 0 )
		{

			var joystick_dir = point_direction(0, 0, x_axis, y_axis);
		
			// Player moves right
			if ((joystick_dir >= 0 && joystick_dir < 45) ||
				 joystick_dir <= 360 && joystick_dir >= 315)
			{
				x_axis = 1;
			}
		
			// Player moves left
			else if (joystick_dir >= 135 && joystick_dir < 225) 
			{
				x_axis = -1;
			}
	
		}
	}

	if (x_axis != 0 )
	{
		// Move player by multiplyihg by fraction of a second that represents frame time
		x += x_axis * player_speed * (delta_time/1000000);
	}
	x = clamp(x, 244, 776);

	if (x_axis > 0)
	{
		image_xscale = 1;	
		sprite_index = spr_player_right;
	}
	else if (x_axis < 0)
	{
		image_xscale = -1;	
		sprite_index = spr_player_right;
	}
	else
	{
		sprite_index = spr_player_right_idle;	
	}


}
