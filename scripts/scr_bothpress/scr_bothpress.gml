// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function eitherpress(button){
	
	// 0 is p1 / 1 is p2
	if gamepad_button_check_pressed(0,button) or gamepad_button_check_pressed(1,button)  {
		return true
}
else{
	return false
}
}