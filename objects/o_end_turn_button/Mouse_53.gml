var x1 = display_get_gui_width() - (display_get_gui_width() * 3/32);
var y1 = display_get_gui_height() - (display_get_gui_height() * 3/32);
var x2 = display_get_gui_width() - (display_get_gui_width() * 3/32) + sprite_width;
var y2 = display_get_gui_height() - (display_get_gui_height() * 3/32) + sprite_height;

if point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x1, y1, x2, y2) && visible == true
{
   audio_play_sound(sound_end_turn, 1, false);
	
   alarm[0] = turn_length * room_speed;
   
   o_ship.velocity_x += o_textfield_vx.value;
   o_ship.velocity_y += o_textfield_vy.value;
   
   o_game.turns_remaining -= 1;
   
   visible = false;
}