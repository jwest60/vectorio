/// @description

turns_remaining = 0;
scans_remaining = 0;
scans_reset_this_turn = true;

show_debug_message(room_get_name(room));

// Determine how many turns you have left
switch (room_get_name(room))
{
	case "level1":
	{
		turns_remaining = 2;
		break;
	}
	case "level2":
	{
		turns_remaining = 3;
		break;
	}
	case "level3":
	{
		turns_remaining = 3;
		break;
	}
	case "level4":
	{
		turns_remaining = 2;
		break;
	}
	case "level5":
	{
		turns_remaining = 4;
		break;
	}
	default: break;
}

// Determine how many scans you have left
switch (room_get_name(room))
{
	case "level1":
	{
		scans_remaining = 1;
		break;
	}
	case "level2":
	{
		scans_remaining = 2;
		break;
	}
	case "level3":
	{
		scans_remaining = 2;
		break;
	}
	case "level4":
	{
		scans_remaining = 2;
		break;
	}
	case "level5":
	{
		scans_remaining = 5;
		break;
	}
	default: break;
}