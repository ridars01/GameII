if active {
	if ammo > 0
	{
		audio_play_sound(snd_bang, 10, false)
		ammo -= 1
		for(var i = 0; i < 25;  i++)
			instance_create_depth(x, y, depth, obj_bullet)
	}
	if ammo <= 0
	{
		active = false
		alarm_set(0, 5)
		var angle = point_direction(x, y, mouse_x, mouse_y) + random_range(-30, 30)
		var throwSpeed = 10
		hspd = lengthdir_x(throwSpeed, angle)
		vspd = lengthdir_y(throwSpeed, angle)
		depth = 100
	}
}