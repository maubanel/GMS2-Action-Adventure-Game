/// @description Get next typewrite letter
if (typewriter_index < array_length_1d(next_text_array))
{
	next_text = next_text + next_text_array[typewriter_index];
	typewriter_index++;	
	typewriter_finished = false;
	if (typewriter_index + 1 >= array_length_1d(next_text_array))
	{
		typewriter_finished = true;
	}
}
