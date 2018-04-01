if !scans_reset_this_turn
{
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
		scans_remaining = 1;
		break;
	}
	case "level3":
	{
		scans_remaining = 1;
		break;
	}
	case "level4":
	{
		scans_remaining = 2;
		break;
	}
	default: break;
}
}