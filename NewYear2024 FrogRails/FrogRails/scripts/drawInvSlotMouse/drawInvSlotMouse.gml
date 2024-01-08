// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function drawInvSlotMouse(itemName,angle){


	switch(itemName){
		case "rail":
			draw_sprite_ext(spr_rail_straight,0,mouse_x,mouse_y,1,1,angle*90,c_white,1)
			
			break;
		case "rail_L":
			draw_sprite_ext(spr_rail_L,0,mouse_x,mouse_y,1,1,angle*90,c_white,1)
			
			break;
		case -1:
			break;
	}
}