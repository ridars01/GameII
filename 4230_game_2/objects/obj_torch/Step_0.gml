if active {
	if instance_exists(obj_lightsource) {
		x = obj_lightsource.x
		y = obj_lightsource.y
	}
	if instance_exists(obj_player) {
		image_angle = 0 + obj_player.rTorch
	}
	alarm_set(0, 10)
}
else instance_destroy()