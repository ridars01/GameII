draw_self();

if (player_near) 
{
	if !global.sKey {
		var sprite_x = x + sprite_width/2
		var sprite_y = y - 40
		draw_sprite(spr_lock, 0, sprite_x, sprite_y)
	}
	else if (hold_timer > 0) {
	    var bar_width = 32;
	    var bar_height = 4;
	    var progress = clamp(hold_timer / hold_time_required, 0, 1);
	    draw_set_color(c_white);
	    draw_rectangle(x - 16, y - 32, x - 16 + (bar_width * progress), y - 32 + bar_height, false);
	}
	else {
		var sprite_x = x + sprite_width/2
		var sprite_y = y - 20
		draw_sprite(spr_e, 0, sprite_x, sprite_y)
	}
		
}
