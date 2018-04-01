/// @description 

draw_self();

if scanning
{
	draw_set_color(c_orange);
	draw_line(x, y, mouse_x, mouse_y); 
	draw_set_color(c_white);
	
	scan_x = mouse_x;
	scan_y = mouse_y;
}

if scanned
{
	// Draw the scanned line
	draw_line(x, y, scan_x, scan_y);
	// Display the distance to the point
	draw_text(scan_x, scan_y - 75, string(distance_to_point(scan_x, scan_y) / 60));
	draw_text(scan_x, scan_y - 50, string(point_direction(x, y, scan_x, scan_y)));
}