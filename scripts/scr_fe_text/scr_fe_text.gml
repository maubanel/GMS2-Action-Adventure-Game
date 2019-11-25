/// Text function for FE

if (place_meeting(x, y, obj_player_fe))
{
	if (image_index == 0)
	{
		image_index = 1;
		button_reference.image_index = 1;
		audio_play_sound(snd_button_hold, 2, false);
	}
	
	if (keyboard_check(vk_enter) || gamepad_button_check_pressed(global.gamepad[0], gp_face1))
	{
		image_index = 2;
		button_reference.image_index = 2;
		alarm[0] = 15;
		audio_play_sound(snd_button_pressed, 2, false);
	}
}

else if (image_index == 1)
{
	audio_play_sound(snd_button_release, 2, false);
	image_index = 0;
	button_reference.image_index = 0;
}
