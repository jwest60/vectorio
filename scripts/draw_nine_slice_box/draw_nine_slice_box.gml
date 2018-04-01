/// @arg sprite
/// @arg x1
/// @arg x2
/// @arg y1
/// @arg y2

// Assign variables
var size = sprite_get_width(argument0) / 3;
var x1 = argument1;
var x2 = argument2;
var y1 = argument3;
var y2 = argument4;
var width = x2 - x1;
var height = y2 - y1;
var columns = width div size;
var rows = height div size;

// Draw middle of the box
draw_sprite_part_ext(argument0, 0, size, size, 1, 1, x1 + size, y1 + size, width - (size * 2), height - (size * 2), c_white, 1);

// Draw corners
draw_sprite_part(argument0, 0, 0, 0, size, size, x1, y1); // Top left
draw_sprite_part(argument0, 0, size * 2, 0, size, size, x1 + (width - size), y1); // Top right
draw_sprite_part(argument0, 0, 0, size * 2, size, size, x1, y1 + height - size); // Bottom left
draw_sprite_part(argument0, 0, size * 2, size * 2, size, size, x1 + width - size, y1 + height - size); // Bottom right

// Draw edges
draw_sprite_part_ext(argument0, 0, size, 0, 1, size, x1 + size, y1, width - (size * 2), 1, c_white, 1) // Top Edge
draw_sprite_part_ext(argument0, 0, size, size * 2, 1, size, x1 + size, y1 + height - size, width - (size * 2), 1, c_white, 1) // Bottom Edge
draw_sprite_part_ext(argument0, 0, 0, size, size, 1, x1, y1 + size, 1, height - (size * 2), c_white, 1) // Left Edge
draw_sprite_part_ext(argument0, 0, size * 2, size, size, 1, x1 + width - size, y1 + size, 1, height - (size * 2), c_white, 1) // Right Edge
