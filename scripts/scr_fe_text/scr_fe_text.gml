/// Text function for FE
function scr_fe_text() {

	if (place_meeting(x, y, obj_player))
	{
		if (image_index == 0)
		{
			image_index = 1;
			button_reference.image_index = 1;
		}
	
		if (keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(global.gamepad[0], gp_face1))
		{
			image_index = 2;
			button_reference.image_index = 2;
			alarm[0] = 15;
		}
	}

	else if (image_index == 1)
	{
		image_index = 0;
		button_reference.image_index = 0;
	}



}
