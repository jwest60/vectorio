draw_self();

draw_sprite_part(sprite_index, 1, 0, 0, sprite_width * value, sprite_height, x, y - sprite_get_yoffset(sprite_index));
draw_sprite(s_slider_button, 0, x + sprite_width * value, y);

draw_set_font(f_game);
draw_text(sprite_width + 215, y - 7, string(ceil(value * 100)) + "%");