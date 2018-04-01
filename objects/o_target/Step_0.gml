if place_meeting(x, y, o_missile)
{
	audio_play_sound(sound_target_destroyed, 1, false);
	instance_destroy();
}