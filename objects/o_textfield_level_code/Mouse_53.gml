if point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height)
{
   is_focused = true;
   keyboard_string = input;
}
else if (is_focused)
{
   is_focused = false;
   value = input;
}