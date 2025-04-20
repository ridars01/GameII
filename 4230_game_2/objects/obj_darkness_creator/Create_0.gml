var currentX = 25;
var currentY = 25;
global.lightOffSet = 0
rowCount = 0
columnCount = 0
for (var i = 0; i < 500; i++) {
    instance_create_depth(currentX, currentY, -1000, obj_black_square);
    currentX += 50
	
	rowCount += 1
	
    if (currentX > (room_width + 10)) {
        currentX = 25
        currentY += 50
		rowCount = 0
		columnCount += 1
    }

    if (currentY > (room_height + 20)) {
        break
    }
}

global.lightChangeDirection = 1