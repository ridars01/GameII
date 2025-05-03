if other.keys > 0 {
	other.keys--
	hp --
	if !audio_is_playing(snd_doorunlock) then audio_play_sound(snd_doorunlock, 10, false)
}
if hp = 3 sprite_index = spr_doorkey3
else if hp = 2 sprite_index = spr_doorkey2
else if hp = 1 sprite_index = spr_doorkey1
else room_goto(win)