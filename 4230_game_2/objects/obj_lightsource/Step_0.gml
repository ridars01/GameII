if instance_exists(obj_player) {
	var angle_to_mouse = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y);
	var radius = 15; // distance from player, adjust to taste
	
	x = obj_player.x + lengthdir_x(radius, angle_to_mouse)
	y = obj_player.y + lengthdir_y(radius, angle_to_mouse) - 25
}