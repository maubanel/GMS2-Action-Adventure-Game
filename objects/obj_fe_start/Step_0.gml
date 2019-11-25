/// @description Text Logic

scr_fe_text();

//quite game
if (keyboard_check_released(vk_escape) || gamepad_button_check_pressed(global.gamepad[0], gp_select))
{

	game_end();
}