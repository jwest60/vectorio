/// @description

keyboard_string = "";

turns_remaining = 0;
scans_remaining = 0;
scans_reset_this_turn = true;
current_level = "Level 0";

show_debug_message(room_get_name(room));

// Determine how many turns you have left
switch (room_get_name(room))
{
	case "level1":
	{
		turns_remaining = 2;
		scans_remaining = 1;
		current_level = "Level 1";
		break;
	}
	case "level2":
	{
		turns_remaining = 3;
		scans_remaining = 2;
		current_level = "Level 2";
		break;
	}
	case "level3":
	{
		turns_remaining = 3;
		scans_remaining = 2;
		current_level = "Level 3";
		break;
	}
	case "level4":
	{
		turns_remaining = 2;
		scans_remaining = 2;
		current_level = "Level 4";
		break;
	}
	case "level5":
	{
		turns_remaining = 4;
		scans_remaining = 5;
		current_level = "Level 5";
		break;
	}
	case "level_secret":
	{
		turns_remaining = 8;
		scans_remaining = 6;
		current_level = "Secret!";
		break;
	}
	default: break;
}