/// @description

if instance_exists(o_ship)
{
	draw_set_font(f_game);
	// Draw velocity-x
	draw_text(20, display_get_gui_height() - 70, "Ship Velocity X: " + string(o_ship.velocity_x));
	// Draw velocity-y
	draw_text(20, display_get_gui_height() - 45, "Ship Velocity Y: " + string(o_ship.velocity_y));
	// Draw ship angle
	draw_text(20, display_get_gui_height() - 20, "Ship Angle: " + string(o_ship.sprite_angle));
	// Draw turns left
	if turns_remaining > 0
		draw_text(display_get_gui_width() - 220, 5, "Turns Remaining: " + string(turns_remaining));
	else
		draw_text_color(display_get_gui_width() - 220, 5, "Turns Remaining: " + string(turns_remaining), c_red, c_red, c_red, c_red, image_blend);
	// Draw scans left
	if scans_remaining > 0
		draw_text(display_get_gui_width() - 220, 30, "Scans Remaining: " + string(scans_remaining));
	else
		draw_text_color(display_get_gui_width() - 220, 30, "Scans Remaining: " + string(scans_remaining), c_red, c_red, c_red, c_red, image_blend);
	draw_text_color(display_get_gui_width() - 150, 55, current_level, c_orange, c_orange, c_orange, c_orange, image_alpha);
}