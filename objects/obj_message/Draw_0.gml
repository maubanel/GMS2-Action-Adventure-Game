/// @description Message Box
// You can write your code in this editor

//new_message.

if (draw_box)
{
	//Draws Message Sprite
	draw_self();
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);

	var max_length = 0;

	//Get number of characters of string
	var max_length = string_length(next_text);

	//Get height of a line
	var line_height = string_height("ABCDEFGHIJKLMNOPQRSTUVWXYZ");


	//Place background on top of player


	var max_height = string_height_ext(next_text, line_height, box_width - margin * 2);

	//Draw Buttons
	switch(type)
	{
		case 0: //Draw ok or next icon
			if (!typewriter_delay || typewriter_finished)
			{
				draw_sprite(spr_dialogue_messages, button_index,
					x + box_width - margin - sprite_get_width(spr_dialogue_messages), 
					y + box_height - 2 - sprite_get_height(spr_dialogue_messages));
			}
			break;
		
		case 1: //Draw yes no question buttons
					if (!typewriter_delay || typewriter_finished)
			{
				draw_sprite(spr_dialogue_messages, no_button_index,
					x + box_width - margin - sprite_get_width(spr_dialogue_messages), 
					y + box_height - 2 - sprite_get_height(spr_dialogue_messages));
				
				draw_sprite(spr_dialogue_messages, yes_button_index,
					x + box_width - margin * 2 - sprite_get_width(spr_dialogue_messages) * 2 , 
					y + box_height - 2 - sprite_get_height(spr_dialogue_messages));
			}
			break;
			case 2:
			if (!typewriter_delay || typewriter_finished)
			{
				draw_sprite(spr_dialogue_messages, button_index,
					x + box_width - margin - sprite_get_width(spr_dialogue_messages), 
					y + box_height - 2 - sprite_get_height(spr_dialogue_messages));
				draw_set_color(c_aqua);
				draw_text (x + margin, y + 65, input[0] + cursor);
			}
			break;
	}
	draw_set_color(c_white);
	
	//Next Message
	draw_text(x + margin, y + margin, next_text);

}