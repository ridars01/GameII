var currentX = 25;
var currentY = 25;
global.lightOffSet = 0

for (var i = 0; i < 500; i++) {
    instance_create_depth(currentX, currentY, -1000, obj_black_square);
    currentX += 50;

    if (currentX > room_width) {
        currentX = 0;
        currentY += 50;
    }

    if (currentY > room_height) {
        break;
    }
}

global.lightChangeDirection = 1