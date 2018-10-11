/// @description Insert description here
// You can write your code in this editor

if mouse_check_button_pressed(mb_left) and mouse_x >= Chip.bbox_left and mouse_x <= Chip.bbox_right and mouse_y >= Chip.bbox_top and mouse_y <= Chip.bbox_bottom
{
	selected = true;
}
else if not mouse_check_button_pressed(mb_left)
{
	selected = false;
}

//
if selected
{
	Chip.x = mouse_x;
}
