if global.torchActive {
	if instance_exists(obj_lightsource) {
		x = obj_lightsource.x
		y = obj_lightsource.y
	}
	if instance_exists(obj_player) {
		var dist = (x - obj_player.x)
		image_angle = 0 - dist
		if obj_player.sprite_index = spr_player_walkUp 
			then depth = obj_player.depth + 1 
		else depth = obj_player.depth - 1
	}
}
else instance_destroy()