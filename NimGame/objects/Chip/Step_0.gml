/// @description Insert description here
// You can write your code in this editor

if mouse_check_button_pressed(mb_left)
{
	selected = true;
	show_debug_message("Selected");
}
else if not mouse_check_button_pressed(mb_left)
{
	selected = false;
	show_debug_message("Deselected");
}

//

