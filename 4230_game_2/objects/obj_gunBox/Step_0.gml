// Detect if player is nearby
player_near = (distance_to_object(obj_player) < 32); // adjust as needed

if obj_player.y < y depth = obj_player.depth - 1 else depth = obj_player.depth + 1

if (player_near) && !empty && global.sKey {
    if (keyboard_check(ord("E"))) {
        hold_timer += 1;
        // visual feedback like progress bar here
    } else {
        hold_timer = 0; // let go too early
    }

    if (hold_timer >= hold_time_required) {
        // Open the box!
        instance_create_depth(x, y, -999, obj_gun);
		empty = true
		audio_play_sound(snd_open, 10, false)

        hold_timer = 0; // prevent re-opening
        // Optional: destroy the box or change its sprite
        sprite_index = spr_gunBoxO
    }
} else {
    hold_timer = 0; // player walked away
}
