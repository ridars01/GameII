if active
{
	if instance_exists(obj_player)
	{
		var angle_to_mouse = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y);
		var radius = 25; // distance from player, adjust to taste
		
		image_angle = angle_to_mouse
	
		x = obj_player.x + lengthdir_x(radius, angle_to_mouse)
		y = obj_player.y + lengthdir_y(radius, angle_to_mouse)
	}
}
else {
	x += hspd
	y += vspd
	image_angle += 20 * throwAngle
}