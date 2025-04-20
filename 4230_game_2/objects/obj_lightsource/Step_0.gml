x = clamp(x, 0, room_width - sprite_width);
y = clamp(y, 0, room_height - sprite_height);

// location change based on player animation:
if instance_exists(obj_player) {
	x = obj_player.xTorch
	y = obj_player.yTorch
}