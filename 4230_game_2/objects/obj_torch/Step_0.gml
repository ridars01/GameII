if active {
	if instance_exists(obj_lightsource) {
		x = obj_lightsource.x
		y = obj_lightsource.y
	}
	if instance_exists(obj_player) {
		var dist = (x - obj_player.x)
		image_angle = 0 - dist
	}
}
else instance_destroy()