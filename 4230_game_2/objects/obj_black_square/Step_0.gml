var light = instance_nearest(x, y, obj_lightsource)

if (light != noone) {
    var dist = point_distance(x, y, light.x, light.y)
    var max_light_dist = 500
	var min_light_dist = 50
	
    if (dist > max_light_dist) {
		
        image_alpha = 1 // fully dark
		
	} else if (dist < min_light_dist) {
		
		image_alpha = 0 // fully light
		
    } else {
		
		dist -= 50
		dist += global.lightOffSet // apply flickering
		
		image_alpha = (1.012^dist)/400 // set current transparency
		
	}
}