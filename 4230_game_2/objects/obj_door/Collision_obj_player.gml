if room == tutorial
	if other.keys > 0 {
		other.keys --
		instance_destroy()
	}