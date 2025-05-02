x = clamp(x, 0, room_width - sprite_width);
y = clamp(y, 0, room_height - sprite_height);

var moveSpeed = 2
if (keyboard_check(vk_shift)) {
    moveSpeed *= 2;
}

xTorch = x + xOffset
yTorch = y + yOffset

var afk = true
if keyboard_check(ord("D")) {         // walk right
	x += moveSpeed
	afk = false
	xTorch = x + xOffset
}
if keyboard_check(ord("A")) {         // walk left
	x -= moveSpeed
	afk = false
	xTorch = x + xOffset
}
if keyboard_check(ord("W")) {         // walk up
	y -= moveSpeed
	afk = false
	yTorch = y + yOffset
}
if keyboard_check(ord("S")) {         // walk down
	y += moveSpeed
	afk = false
	yTorch = y + yOffset
}
if afk then sprite_index = spr_player