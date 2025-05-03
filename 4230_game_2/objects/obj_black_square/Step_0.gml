if  global.torchActive {
	var light = instance_nearest(x, y, obj_lightsource)
	var oldDistance = point_distance(x, y, light.x, light.y)
	var distOffset = -50

	for (var i = 0; i < instance_number(obj_lightsource); ++i;)
	{
	    var newLight = instance_find(obj_lightsource,i);
		var newDistance = point_distance(x, y, light.x, light.y)
		if newDistance/newLight.strength > oldDistance/light.strength
		light = newLight
		oldDistance = newDistance
	}

	if (light != noone) {
		//if light.object_index = obj_thrown_lightsource && light.strength
	    var dist = light.strength*point_distance(x, y, light.x, light.y)
	    var max_light_dist = 500
	
	    if (dist > max_light_dist){
		
	        image_alpha = 1 // fully dark
		
	    } else {
		
			dist += distOffset // extra modification to distance
			dist += global.lightOffSet // apply flickering
		
			if dist < 0 image_alpha = 0 else
				image_alpha = (1.012^(dist))/200 // set current transparency
		
		}
	}
}
else {
	
	var player = instance_nearest(x, y, obj_player)
	var distance = point_distance(x, y, player.x, player.y)
	if distance < 160 then image_alpha = 1 - .1 else image_alpha = 1
	
}