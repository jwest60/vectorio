if point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x, y, x + sprite_width, y + sprite_height) && visible == true
{
   audio_play_sound(sound_end_turn, 1, false);
	
   alarm[0] = turn_length * room_speed;
   
   o_ship.velocity_x += o_textfield_vx.value;
   o_ship.velocity_y += o_textfield_vy.value;
   
   o_game.turns_remaining -= 1;
   
   visible = false;
}