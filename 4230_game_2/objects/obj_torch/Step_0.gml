if active {
	if instance_exists(obj_lightsource) {
		x = obj_lightsource.x
		y = obj_lightsource.y
	}
}
else instance_destroy()