if x >= room_width || x <= 0 || y >= room_height || y <= 0 then phase = 3
	x = clamp(x, -20, room_width + 20)
	y = clamp(y, -20, room_height + 20)

if !audio_is_playing(snd_monster_feet)
	sound_id = audio_play_sound(snd_monster_feet, 10, true)
	
var dist = point_distance(x, y, obj_player.x, obj_player.y)
var max_dist = 400
var vol = 1 - clamp(dist / max_dist, 0, 1)
audio_sound_gain(sound_id, vol, 0);

var trueAgression = agression
if !global.torchActive {
	trueAgression = agression + .2
}

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
			monster_move_towards(obj_player.x, obj_player.y, 4, false)
			
			if instance_exists(obj_wall)
			
				if distance_to_object(obj_wall) < 5 {
					phase = 1 
					alarm_set(0, 70)
				}
			if !audio_is_playing(snd_screech)
				audio_play_sound(snd_screech, 10, false)
				
		}
	}
	
	else if phase == 1
	{	//running away
		if object_exists(obj_player) {
			var playerDir = point_direction(x, y, obj_player.x, obj_player.y)
			speed = 20
			direction = playerDir + 180
		}
		show_debug_message("Running!")
	}
	
	else if phase == 2
	{	//ambushing
		// ultimately unused
	}
	
	else if phase == 3
	{
		if (random(100) <= trueAgression * 100 * agressionModifier) {
			phase = 0
			show_debug_message("Rolled below " + string(agression * 100))
		}
	    if (object_exists(obj_player) && distance_to_object(obj_player) < 170)
	    {
	        phase = 1
	        alarm_set(0, 25)
	        show_debug_message("Got too close!")
	    }
	    else if (!stalking)
	    {
	        var angle = random(360); // random direction around player
	        var distance = random_range(200, 300) // stalking radius
	        xStalkPoint = obj_player.x + lengthdir_x(distance, angle)
	        yStalkPoint = obj_player.y + lengthdir_y(distance, angle)

	        // clamp or adjust if point is out of bounds
	        xStalkPoint = clamp(xStalkPoint, 0, room_width)
	        yStalkPoint = clamp(yStalkPoint, 0, room_height)

	        monster_move_towards(xStalkPoint, yStalkPoint, 2.5, false)

	        stalking = true
	        show_debug_message("Stalking to: " + string(xStalkPoint) + ", " + string(yStalkPoint))
	    }
		
	    else
	    {
	        if (point_distance(x, y, xStalkPoint, yStalkPoint) < 10)
	        {
	            stalking = false
	            speed = 0
	        }
	    }
	}
}
else if phase == 4
{	//when player has been done kilt
	speed = 0
}

// === Sprite Direction Logic ===
// Only run this if the monster is actually moving
if speed > 0
{
    var move_dx = lengthdir_x(speed, direction)
    var move_dy = lengthdir_y(speed, direction)

    if abs(move_dx) > abs(move_dy)
    {
        sprite_index = spr_monster_walkSide
        image_xscale = (move_dx < 0) ? -1 : 1
    }
    else
    {
        if move_dy < 0 {
            sprite_index = spr_monster_walkUp
        } else {
            sprite_index = spr_monster_walkDown
        }
    }
}
else
{
    sprite_index = spr_monster
}