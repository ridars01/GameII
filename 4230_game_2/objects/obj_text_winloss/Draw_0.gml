if room == lose {
	var myColor = c_red
	var myText = "You were killed!"
}
else if room == win {
	var myColor = c_yellow
	var myText = "You escaped! Yippee!"
}

draw_text(room_width/2 - 150, room_height/2 - 150, myText);
