/// @description Controls for sprite

//stop background from animating
image_speed = 0;

//text for message as string
text = "";

//text for message as array
next_text ="";

//text in array for typewrite effect
next_text_array[0] = "";

//array that holds the user input for draw_dialogue_input()
input[0] = "";

cursor = "|";

cursor_delay = 10;

//limit input
input_limit = 270;

//randomizes the order of displayed text
//  or diplays in order
is_rand = false;

//instance_id of calling sprite
callihg_id = -1;

//instance of object calling player
caller_id = -1;

//instance of object of player triggering message
player_id = -1;

// 0 is message, 1 is question, 2 is input
type = -1;

//If 0 there is no typewriter effect or set to number of frames for delay
typewriter_delay = 0;

//Where in typewriter effect that the text is up to
typewriter_index = 0;

//Tracks whether typewriter is finished writing or not
typewriter_finished = false;

//Space between calling object and text box
space_above = 32;

//Keeps image_index of spr_dialogue_messages sprite for ok and next
button_index = 0;

yes_button_index = 5;

no_button_index = 7;


//Whether draw event draws text box
draw_box = true;

//index to track which text array being played
array_index = -1;

//Tracks whether a message is coming up or it is the last message
message_ahead = false;

//Checks to see if player has pressed selecxt
pressed_enter = false;

//Size of text box
box_width = sprite_get_width(spr_message_background);
box_height = sprite_get_height(spr_message_background);

//Margin for left, top and right hand side
margin = 15;
//Margin for bottom leaving room for buttons
bottom_margin = margin + sprite_get_height(spr_dialogue_messages);

/*
// Find position of message box above player
// y is adjusted by a margin that is the space between top of 
// the npc and the bottom of the message box
*/
		
x = clamp(x -box_width *.5, 0, room_width - box_width);
y = clamp(y - box_height - 16, 0, room_height - box_height);