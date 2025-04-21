if object_exists(obj_player)
	if phase == 0
	{	//attacking
		if object_exists(obj_player) {
			move_towards_point(obj_player.x, obj_player.y, 3)
			speed = 4
		}
	}
	else if phase == 1
	{	//running away
		if object_exists(obj_player) {
			var playerDir = point_direction(x, y, obj_player.x, obj_player.y)
			speed = 10
			direction = playerDir + 180
		}
	}
	else if phase == 2
	{	//ambushing
	
	}
	else if phase == 3
	{	//stalking
	
	}
	else if phase == 4
	{	//when player has been done kilt
		speed = 0
	}