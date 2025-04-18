var lightChangeAmount = 10
global.lightOffSet += -1 * lightChangeAmount

if global.lightOffSet >= 100 then lightChangeDirection = -1

if global.lightOffSet <= -100 then lightChangeDirection = 1