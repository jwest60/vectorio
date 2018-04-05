switch (tutorial_state)
{
	case 0:
	{
		if mouse_check_button_pressed(mb_left) tutorial_state++;
		break;
	}
	case 1:
	{
		if keyboard_check_pressed(vk_tab) tutorial_state++;
		break;
	}
	case 2:
	{
		if mouse_check_button_pressed(mb_left) tutorial_state++;
		break;
	}
	case 3:
	{
		if mouse_check_button_pressed(mb_left) tutorial_state++;
		break;
	}
	case 4:
	{
		if mouse_check_button_pressed(mb_left) tutorial_state++;
		break;
	}
	case 5:
	{
		if keyboard_check_pressed(vk_space) tutorial_state++;
		break;
	}
	case 6:
	{
		if position_meeting(mouse_x, mouse_y, o_objective_zone) && mouse_check_button_pressed(mb_left) tutorial_state++;
		break;
	}
	case 7:
	{
		if mouse_check_button_pressed(mb_left) tutorial_state++;
		break;
	}
	case 8:
	{
		if mouse_check_button_pressed(mb_left) tutorial_state++;
		break;
	}
	case 9:
	{
		if mouse_check_button_pressed(mb_left) tutorial_state++;
		break;
	}
	case 10:
	{
		if mouse_check_button_pressed(mb_left) tutorial_state++;
		break;
	}
	case 11:
	{
		if position_meeting(o_ship.x, o_ship.y, o_objective_zone) tutorial_state++;
		break;
	}
	case 12:
	{
		if mouse_check_button_pressed(mb_left) tutorial_state++;
		break;
	}
	case 13:
	{
		if mouse_check_button_pressed(mb_left) tutorial_state++;
		break;
	}
	case 14:
	{
		if mouse_check_button_pressed(mb_left) tutorial_state++;
		break;
	}
	case 15:
	{
		if mouse_check_button_pressed(mb_left) tutorial_state++;
		break;
	}
	case 16:
	{
		if o_ship.velocity_x == 0 tutorial_state++;
		break;
	}
	case 17:
	{
		if mouse_check_button_pressed(mb_left) tutorial_state++;
		break;
	}
	case 18:
	{
		if mouse_check_button_pressed(mb_left) tutorial_state++;
		break;
	}
	case 19:
	{
		if mouse_check_button_pressed(mb_left) tutorial_state++;
		break;
	}
	case 20:
	{
		if mouse_check_button_pressed(mb_left) tutorial_state++;
		break;
	}
	case 21:
	{
		if mouse_check_button_pressed(mb_left) tutorial_state++;
		break;
	}
	case 22:
	{
		audio_play_sound(sound_level_warp, 1, false);
		room_goto(level1_1);
	}
}