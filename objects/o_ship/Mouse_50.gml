if scanning && instance_nearest(x, y, o_tutorial) == noone
{
	scanning = false;
	scanned = true;
	o_game.scans_remaining -= 1;
}
if scanning && instance_nearest(x, y, o_tutorial) != noone && position_meeting(mouse_x, mouse_y, o_objective_zone)
{
	scanning = false;
	scanned = true;
}