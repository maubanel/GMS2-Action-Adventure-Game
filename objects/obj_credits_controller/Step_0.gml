/// @description Credits room controller

if (keyboard_check(vk_enter) || y < -600 || keyboard_check_released(vk_escape) || gamepad_button_check(global.gamepad[0], gp_start))
{
	audio_play_sound(snd_button_release, 2, false);
	
	room_goto(rm_fe);		
}