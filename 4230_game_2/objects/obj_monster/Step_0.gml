if x >= room_width || x <= 0 || y >= room_height || y <= 0 then phase = 3

if instance_exists(obj_thrown_lightsource)
	if distance_to_object(obj_thrown_lightsource) < 70 {
		phase = 1 
		alarm_set(0, 70)
	}
	
if object_exists(obj_player){
	var xPlayer = obj_player.x
	var yPlayer = obj_player.y
	
	if phase == 0
	{	//attacking
		if object_exists(obj_player) {
			move_towards_point(obj_player.x, obj_player.y, 4)
		}
	}
	
	else if phase == 1
	{	//running away
		if object_exists(obj_player) {
			var playerDir = point_direction(x, y, obj_player.x, obj_player.y)
			speed = 20
			direction = playerDir + 180
		}
	}
	
	else if phase == 2
	{	//ambushing
	
	}
	
	else if phase == 3
	{
		if random(100) <= agression * 100 {
			phase = 0
			show_debug_message("Rolled below " + string(agression * 100))
		}
	    if (object_exists(obj_player) && distance_to_object(obj_player) < 170)
	    {
	        phase = 1;
	        alarm_set(0, 50);
	        show_debug_message("Got too close!");
	    }
	    else if (!stalking)
	    {
	        var angle = random(360); // random direction around player
	        var distance = random_range(200, 300); // stalking radius
	        xStalkPoint = obj_player.x + lengthdir_x(distance, angle);
	        yStalkPoint = obj_player.y + lengthdir_y(distance, angle);

	        // clamp or adjust if point is out of bounds
	        xStalkPoint = clamp(xStalkPoint, 0, room_width);
	        yStalkPoint = clamp(yStalkPoint, 0, room_height);

	        move_towards_point(xStalkPoint, yStalkPoint, 2.5);
	        stalking = true;
	        show_debug_message("Stalking to: " + string(xStalkPoint) + ", " + string(yStalkPoint));
	    }
		
	    else
	    {
	        if (point_distance(x, y, xStalkPoint, yStalkPoint) < 10)
	        {
	            stalking = false;
	            speed = 0;
	        }
	    }
	}
}
else if phase == 4
{	//when player has been done kilt
	speed = 0
}