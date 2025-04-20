var lightChangeAmount = .1
global.lightOffSet += (global.lightChangeDirection * lightChangeAmount)

if global.lightOffSet >= 25 then global.lightChangeDirection = -1

if global.lightOffSet <= -25 then global.lightChangeDirection = 1