if (is_focused == true)
   {	   
	   // Output the keyboard string
     if (keyboard_check_pressed(vk_enter))
         {
              is_focused = false;
			  value = real(input);
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