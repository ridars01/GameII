xTargetLocation = mouse_x
yTargetLocation = mouse_y
strength = 1
decaying = false

var xDirection = 1
var yDirection = 1

if xTargetLocation < x then xDirection = -1
if yTargetLocation < y then yDirection = -1

var xDistance = abs(xTargetLocation - x)
var yDistance = abs(yTargetLocation - y)

var distance = xDistance + yDistance

xDistance = xDirection * xDistance
yDistance = yDirection * yDistance

hspeed = xDistance/10
vspeed = yDistance/10

if distance > 300 {
	hspeed -= 1
	vspeed -= 1
}
alarm_set(0, 10)