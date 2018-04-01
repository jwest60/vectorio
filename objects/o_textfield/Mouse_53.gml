// Focus on the text field if player clicks on it

if point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x, y, x + sprite_width, y + sprite_height)
{
   is_focused = true;
   keyboard_string = input;
}
else if (is_focused)
{
   is_focused = false;
   value = real(input);
}