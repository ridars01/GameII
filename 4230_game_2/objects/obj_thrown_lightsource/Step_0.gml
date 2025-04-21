if decaying then strength += .008

if strength >= 2 then instance_destroy()

if instance_exists(myTorch) {
	myTorch.x = x
	myTorch.y = y
}
