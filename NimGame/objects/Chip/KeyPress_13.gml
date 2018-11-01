/// @description Insert description here
// You can write your code in this editor
if (selected = true) && (global.SelectedColor =="red")
{
	gamescript.red_count -= 1;
	//show_debug_message(gamescript.red_count);
	instance_destroy();
	global.turn = "AI"
}