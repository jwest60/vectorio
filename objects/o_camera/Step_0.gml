if !instance_exists(camera_target) exit;

if keyboard_check_pressed(vk_tab)
{
	focused_on_player = !focused_on_player;
}

if focused_on_player
{
	camera_set_view_size(view_camera[0], room_width / 2, room_height / 2);
	
	x = lerp(x, camera_target.x, 0.1);
	y = lerp(y, camera_target.y, 0.1);
	x = clamp(x, camera_width / 2, room_width - camera_width / 2);
	y = clamp(y, camera_height / 2, room_height - camera_height / 2);

	camera_set_view_pos(view_camera[0], x - camera_width / 2, y - camera_height / 2);
}
else
{
	camera_set_view_size(view_camera[0], room_width, room_height);
	camera_set_view_pos(view_camera[0], 0, 0);
}