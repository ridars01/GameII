if (room == tutorial or room == Room1) 
and (!audio_is_playing(snd_background) or !audio_is_playing(snd_background_bells)) and !global.torchActive
	{
			if random(10) > 5 audio_play_sound(snd_background_bells, 10, false) else audio_play_sound(snd_background, 10, false)
	}