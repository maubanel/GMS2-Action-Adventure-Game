/// @description scr_return_to_path
/// @arg {real} path			Path to check
/// @arg {real} interval			Number between 0 and 1 to see how many points 
function scr_return_to_path(argument0, argument1) {
	//									in path to check

	///point_on_path Returns an array with an x & y position and point in path 

	/*
	Function takes the existing x and y from object and checks against distance to 
	a gamemaker path.

	Function returns the closest point to game object calling the function the
	point at interval that is closest with an x, y and position on path in a
	return array

	*/
	var path = argument0;
	var interval = argument1;

	//return array
	var point_on_path;

	point_on_path[0] = path_get_x(path, 0);
	point_on_path[1] = path_get_y(path, 0);
	point_on_path[2] = 0;

	//Array to see if it is a shorter path
	var point_to_check;

	//Set shortest path at begining of path
	var shortest_path;
	shortest_path = point_distance(x, y, point_on_path[0], point_on_path[1]);

	//Go through interval between 0 and 1
	for (var i = interval; i <= 1; i+= interval)
	{
		point_to_check[0] = path_get_x(path, i);
		point_to_check[1] = path_get_y(path, i);
		point_to_check[2] = i;
	
		if (point_distance(x, y, point_to_check[0], point_to_check[1]) < shortest_path)
		{
			point_on_path[0] = point_to_check[0];
			point_on_path[1] = point_to_check[1];
			point_on_path[2] = point_to_check[2];
			shortest_path = point_distance(x, y, point_to_check[0], point_to_check[1]);
			show_debug_message("shortest point at: " + string(i) + " x: " + 
			string(point_on_path[0] ) + " y: " + string(point_on_path[1] ));
		}
	}

	return point_on_path;


}
