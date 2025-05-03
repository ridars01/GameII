// @function monster_move_towards(xdest, ydest, spd, checkCollision)
function monster_move_towards(xdest, ydest, spd, avoidWalls) {

	var angle = point_direction(x, y, xdest, ydest);
	var dx = lengthdir_x(spd, angle);
	var dy = lengthdir_y(spd, angle);

	if avoidWalls
	{
	    if !place_meeting(x + dx, y, obj_wall) {
	        x += dx;
	    }
	    if !place_meeting(x, y + dy, obj_wall) {
	        y += dy;
	    }
	}
	else
	{
	    x += dx;
	    y += dy;
	}
}