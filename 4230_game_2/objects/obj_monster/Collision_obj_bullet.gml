if !invincible {
	alarm_set(0, 100)
	invincible = true
	alarm_set(1, 50)
	hp --
	phase = 1
	agression += .01
}
instance_destroy(other)
if hp <= 0
{
	phase = 4
	alarm_set(5, 15)
}