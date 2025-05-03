
instance_create_depth(x, y, depth, obj_thrown_lightsource)
if global.torches > 0 {
	global.torches --
	strength = .98
}
else {
	instance_destroy()
}
