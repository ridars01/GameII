if active
{
	if instance_exists(obj_player)
	{
		var angle_to_mouse = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y);
		var radius = 30; // distance from player, adjust to taste
		
		image_angle = angle_to_mouse
	
		x = obj_player.x + lengthdir_x(radius, angle_to_mouse)
		y = obj_player.y + lengthdir_y(radius, angle_to_mouse) + 10
		
		if image_angle > 90 and image_angle < 270 then image_yscale = -1 else image_yscale = 1
		
		if obj_player.sprite_index = spr_player_walkUp 
			then depth = obj_player.depth + 1 
		else depth = obj_player.depth - 1
	}
}
else {
	x += hspd
	y += vspd
	image_angle += 20 * throwAngle
}