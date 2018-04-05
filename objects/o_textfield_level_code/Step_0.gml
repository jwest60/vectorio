if (is_focused)
  {	   
	   // Output the keyboard string
     if (keyboard_check_pressed(vk_enter))
         {
              is_focused = false;
			  value = input;
			  
			  code_entered = true;
         }
		 // Take input so long as the field isn't full
       if (string_length(input) < max_chars)
         {
              input = keyboard_string;
         }
		 // Delete characters
       if (keyboard_check_pressed(vk_backspace))
        {
            input = string_delete(input, max_chars, 1);
            keyboard_string = input;
        }
}

if code_entered
{
	keyboard_string = "";
	
	switch (value)
	{
		case "GOVOLS":
		{
			audio_play_sound(sound_level_warp, 1, false);
			room_goto(level1_1);
			break;
		}
		case "EFTIME":
		{
			audio_play_sound(sound_level_warp, 1, false);
			room_goto(level2_1);
			break;
		}
		case "TARGET":
		{
			audio_play_sound(sound_level_warp, 1, false);
			room_goto(level3_1);
			break;
		}
		case "HELPME":
		{
			audio_play_sound(sound_level_warp, 1, false);
			room_goto(level4_1);
			break;
		}
		case "SECRET":
		{
			audio_play_sound(sound_level_warp, 1, false);
			room_goto(level_secret_pre);
			break;
		}
		default:
		{
			audio_play_sound(sound_level_warp, 1, false);
			code_invalid = true;
			alarm[0] = 5;
		}
	}
}