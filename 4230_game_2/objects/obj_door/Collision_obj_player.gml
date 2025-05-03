if room == tutorial
	if other.keys > 0 {
		audio_play_sound(snd_open, 10, false)
		other.keys --
		instance_destroy()
	}