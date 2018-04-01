// Reset the image

// Turn is inactive
if o_end_turn_button.alarm[0] < 0
{
	// Begin scan
	if keyboard_check_pressed(vk_space) && o_game.scans_remaining > 0
	{
		audio_play_sound(sound_scan, 1, false);
		scanning = true;
	}
}

// Turn is active
if o_end_turn_button.alarm[0] > 0
{	
	image_index = 0;

	if (velocity_x != 0 || velocity_y != 0) image_index = 1;
	
	if (!fired && firing)
	{
		missile_angle = o_textfield_angle.value;
		instance_create_layer(x, y, "Instances", o_missile);
		audio_play_sound(sound_missile, 1, false);
		firing = false;
		fired = true;
	}

	x += velocity_x;
	y += -velocity_y;

	sprite_angle = 0;
	if (velocity_x != 0) sprite_angle = radtodeg(arctan(abs(velocity_y) / abs(velocity_x)));
	
	if (velocity_x < 0 && velocity_y > 0) sprite_angle += 90;
	if (velocity_x < 0 && velocity_y < 0) sprite_angle += 180;
	if (velocity_x > 0 && velocity_y < 0) sprite_angle += 270;
	if (velocity_x == 0 && velocity_y == 0) sprite_angle = 0;
	if (velocity_x == 0 && velocity_y > 0) sprite_angle = 90;
	if (velocity_x < 0 && velocity_y == 0) sprite_angle = 180;
	if (velocity_x == 0 && velocity_y < 0) sprite_angle = 270;

	image_angle = sprite_angle;

	if place_meeting(x, y, o_wall) {
		audio_play_sound(sound_explosion, 1, false);
		instance_destroy();
		global.room_from = room;
		keyboard_string = "";
		room_goto(game_over);
	}

	if place_meeting(x, y, o_objective_zone) && velocity_x == 0 && velocity_y == 0 && instance_nearest(x, y, o_target) == noone
	{
		audio_play_sound(sound_level_warp, 1, false);	
		keyboard_string = "";
		room_goto_next();
	}
}
