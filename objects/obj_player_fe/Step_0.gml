/// @description Player AI

//Only move player if in the INGAME state
if (state == FE)
{
	//Variables to hold x & y axis
	x_axis = 0;
	y_axis = 0;

	//Get player controls on keyboard and joystick
	scr_player_controls();
	
	y_axis = 0;

	//Move player in room
	scr_player_movement();

	//Select correct animation for movement
	scr_player_animation();

	x = clamp(x, 240, 780);
}




