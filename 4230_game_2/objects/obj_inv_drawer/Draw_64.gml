// Set up positions
var sprite_x = 32
var sprite_y = 32

draw_sprite(spr_torch_lit, 0, sprite_x, sprite_y)

draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_set_color(c_white)
if instance_exists(obj_player)
{
	draw_text(sprite_x + 40, sprite_y, string(global.torches))
}
