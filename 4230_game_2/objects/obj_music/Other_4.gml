if (room == mainMenu) {
	audio_stop_all() 
	audio_play_sound(snd_torchCrackling, 10, true)
}
else if (room == bigwin) {
	audio_stop_all()
	audio_play_sound(snd_bigwin, 10, false)
}
else if (room == win) {
	audio_stop_all()
	audio_play_sound(snd_win, 10, false)
}