var y_default = display_get_gui_height() - (display_get_gui_height() * (3/32));
var x_default = display_get_gui_width() / 2 - (display_get_gui_width() / 8);
var x_mod = display_get_gui_width() / 16;

switch tutorial_state
{
	case 0:
	{
		draw_text(x_default - x_mod, y_default, "Welcome to Vectorio! Click anywhere to proceed.");
		break;
	}
	case 1:
	{
		draw_text(x_default - (x_mod * 2), y_default, "We can't see much right now. Press TAB to zoom out for a better view.");
		break;
	}
	case 2:
	{
		draw_text(display_get_gui_width() - (display_get_gui_width() / 4), display_get_gui_height() / 2, "This is the objective zone.");
		break;
	}
	case 3:
	{
		draw_text(display_get_gui_width() / 6, display_get_gui_height() / 16, "Here are our velocity vectors.");
		break;
	}
	case 4:
	{
		draw_text(x_default - (x_mod * 2), y_default, "We need to change our velocity to move the ship into the green zone.");
		break;
	}
	case 5:
	{
		draw_text(x_default, y_default, "Try hitting SPACE to begin a scan.");
		break;
	}
	case 6:
	{
		draw_text(x_default - (x_mod * 2), y_default, "Move the scanner into the objective zone and left-click to finish the scan.");
		break;
	}
	case 7:
	{
		draw_text(x_default - x_mod, y_default, "The top number represents the distance to the objective.");
		break;
	}
	case 8:
	{
		draw_text(x_default - x_mod, y_default, "The bottom number is the angle measured from the x-axis.");
		break;
	}
	case 9:
	{
		draw_text(x_default, y_default, "This game operates in 3-second turns.");
		break;
	}
	case 10:
	{
		draw_text(x_default - (x_mod * 2), y_default, "We have a distance now, so let's find our velocity with v = d/t!");
		break;
	}
	case 11:
	{
		draw_text(x_default - (x_mod * 2), y_default - (display_get_gui_height() / 8), "v = 18 units / 3 seconds = 6 units/second. Let's try that.");
		draw_text(x_default - (x_mod * 2), y_default, "Once you have submitted your velocity, click End Turn to see the effects.");
		break;
	}
	case 12:
	{
		draw_text(x_default + x_mod, y_default, "Perfect!");
		break;
	}
	case 13:
	{
		draw_text(x_default - (x_mod * 2), y_default, "You can refer to the bottom left to see information on your ship.");
		break;
	}
	case 14:
	{
		draw_text(x_default - x_mod, y_default, "We're in the green zone, but our ship is still moving...");
		break;
	}
	case 15:
	{
		draw_text(x_default - (x_mod * 2), y_default, "If we don't stop our ship now, we'll crash into that wall for sure!");
		break;
	}
	case 16:
	{
		draw_text(x_default - (x_mod * 2), y_default, "To stop our ship, we need an equal but opposite velocity. Try -6 units/second.");
		break;
	}
	case 17:
	{
		draw_text(x_default, y_default, "Now our ship is safe and sound!");
		break;
	}
	case 18:
	{
		draw_text(x_default - (x_mod * 2), y_default, "You've learned some fundamentals, but it only gets harder from here.");
		break;
	}
	case 19:
	{
		draw_text(x_default - (x_mod * 2), y_default, "Information is given between levels. Read it carefully!");
		break;
	}
	case 20:
	{
		draw_text(x_default - (x_mod * 2), y_default, "But most importantly, have fun! Don't let mistakes get you down.");
		break;
	}
	case 21:
	{
		draw_text(x_default, y_default, "Good luck!");
		break;
	}
	default: break;
}