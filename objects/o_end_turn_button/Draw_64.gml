var x_pos = display_get_gui_width() - (display_get_gui_width() * 3/32);
var y_pos = display_get_gui_height() - (display_get_gui_height() * 3/32);

draw_sprite_ext(s_end_turn_button, 0, x_pos, y_pos, image_xscale, image_yscale, image_angle, image_blend, image_alpha);