if !invincible {
	alarm_set(0, 250)
	invincible = true
	alarm_set(1, 150)
	hp --
	phase = 1
	agression += .01
}
instance_destroy(other)
if hp <= 0
	room_goto(bigwin)
