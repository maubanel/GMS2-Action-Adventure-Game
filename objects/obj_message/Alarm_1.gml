/// @description Destroy message box

instance_destroy();

caller_id.new_message_box = noone;

with (calling_id)
{
	if (!variable_instance_exists(id, "message_number")) 
	{
		message_number = 0;
	}
	else
	{
		message_number++;	
	}
}
