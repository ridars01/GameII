image_yscale *= random_range(.1, .5)
if instance_exists(obj_gun)
{
	var angle = point_direction(x, y, mouse_x, mouse_y) + random_range(-30, 30)
	var bSpeed = 25
	hspd = lengthdir_x(bSpeed, angle);
	vspd = lengthdir_y(bSpeed, angle);
}
alarm_set(0, 15)