if point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x, y, x + sprite_width, y + sprite_height)
{
	audio_play_sound(sound_fire, 1, false);
	o_ship.firing = true;
	o_textfield_angle.visible = true;
	self.visible = false;
}