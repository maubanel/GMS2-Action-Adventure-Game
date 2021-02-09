/// @description draw_dialogue_message()
function scr_message_number() {

	/*
		returns integer with which message it is displaying for this game object
	*/

	if (!variable_instance_exists(id, "message_number")) 
	{
		message_number = 0;
	}
	return message_number;



}
