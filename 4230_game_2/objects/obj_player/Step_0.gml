	x = clamp(x, 0, room_width - sprite_width)
	y = clamp(y, 0, room_height - sprite_height)

	xTorch = x + xOffset
	yTorch = y + yOffset

	var input_x = keyboard_check(vk_right) - keyboard_check(vk_left)
	var input_y = keyboard_check(vk_down) - keyboard_check(vk_up)

	var move_speed = walk_speed

	if (keyboard_check(vk_shift) && stamina > 0) {
	    is_running = true;
	    moveSpeed = run_speed;
	    stamina -= stamina_drain;
	    stamina = max(0, stamina);
	} else {
	    is_running = false;
	    moveSpeed = walk_speed;
	    stamina += stamina_regen;
	    stamina = min(stamina_max, stamina);
	}

	var afk = true
	if keyboard_check(ord("D")) {         // walk right
		x += moveSpeed
		afk = false
		xTorch = x + xOffset
		sprite_index = spr_player_walkSide
		image_xscale = 1
	}
if active {
	if keyboard_check(ord("A")) {         // walk left
		x -= moveSpeed
		afk = false
		xTorch = x + xOffset
		sprite_index = spr_player_walkSide
		image_xscale = -1
	}
	if keyboard_check(ord("W")) {         // walk up
		y -= moveSpeed
		afk = false
		yTorch = y + yOffset
		sprite_index = spr_player_walkUp
		image_xscale = 1
	}
	if keyboard_check(ord("S")) {         // walk down
		y += moveSpeed
		afk = false
		yTorch = y + yOffset
		sprite_index = spr_player_walkDown
		image_xscale = 1
	}
	if afk { 
		sprite_index = spr_player
		if mouse_x < x then image_xscale = -1 else image_xscale = 1
	}

	if global.torches > 0 and !global.torchActive
	{
		instance_create_depth(x, y, depth, obj_lightsource)
		global.torchActive = true
		global.torches --
	}
}