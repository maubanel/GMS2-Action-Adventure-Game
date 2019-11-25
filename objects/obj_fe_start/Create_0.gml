/// @description Start text variables

image_speed = 0;

button_reference = instance_nearest(x, y, obj_fe_button);

//Loop music in game
if (!audio_is_playing(snd_music))
{
	audio_play_sound(snd_music, 1, true);
}
