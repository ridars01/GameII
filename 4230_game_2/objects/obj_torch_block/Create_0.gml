x += random_range(-5, 5)
y += random_range(-5, 0)
var sizeScale = random_range(5, 15)/10
image_xscale = sizeScale
image_yscale = sizeScale
depth = -900
alarm_set(0, 100)

object_color = make_color_rgb(255, random_range(0, 255), 0);

image_blend = object_color