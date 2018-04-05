/// @description

value = o_speaker.sound_effects_volume;

if mouse_check_button_pressed(mb_left)
{
	var button_x = x + sprite_width * value;
	var button_y = y;
	var button_radius = sprite_get_width(s_slider_button) / 2;
	
	if point_in_circle(mouse_x, mouse_y, button_x, button_y, button_radius)
	{
		selected = true;
	}
}

if !mouse_check_button(mb_left)
{
	selected = false;
}

if selected
{
	value = clamp((mouse_x - x) / sprite_width, 0, max_value);
	
	audio_sound_gain(sound_fire, value, 0);
	audio_sound_gain(sound_missile, value, 0);
	audio_sound_gain(sound_explosion, value, 0);
	audio_sound_gain(sound_level_warp, value, 0);
	audio_sound_gain(sound_scan, value, 0);
	audio_sound_gain(sound_end_turn, value, 0);
	audio_sound_gain(sound_target_destroyed, value, 0);
	audio_sound_gain(sound_menu_blip, value, 0);
}

o_speaker.sound_effects_volume = value;