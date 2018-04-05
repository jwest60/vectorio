/// @description turn alarm

// At the end of a turn, allow ship to re-scan
o_ship.scanning = false;
o_ship.scanned = false;
o_ship.fired = false;
o_fire_button.visible = true;
o_textfield_angle.visible = false;
visible = true;

if o_game.turns_remaining == 0
{
	global.room_from = room;
	if instance_nearest(x, y, o_tutorial) == noone room_goto(game_over);
}