var light = instance_nearest(x, y, obj_lightsource)
var oldDistance = point_distance(x, y, light.x, light.y)

for (var i = 0; i < instance_number(obj_lightsource); ++i;)
{
    var newLight = instance_find(obj_lightsource,i);
	var newDistance = point_distance(x, y, light.x, light.y)
	if newDistance/newLight.strength > oldDistance/light.strength
	light = newLight
	oldDistance = newDistance
}

if (light != noone) {
    var dist = light.strength*point_distance(x, y, light.x, light.y)
    var max_light_dist = 500
	
    if (dist > max_light_dist) {
		
        image_alpha = 1 // fully dark
		
    } else {
		
		dist -= 50 // extra modification to distance
		dist += global.lightOffSet // apply flickering
		
		image_alpha = (1.012^(dist))/400 // set current transparency
		
	}
}