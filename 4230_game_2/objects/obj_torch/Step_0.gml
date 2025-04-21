if active {
	if instance_exists(obj_lightsource) {
		x = obj_lightsource.x
		y = obj_lightsource.y
	}
	if instance_exists(obj_player) {
		image_angle = 0 + obj_player.rTorch
	}
}
else instance_destroy()