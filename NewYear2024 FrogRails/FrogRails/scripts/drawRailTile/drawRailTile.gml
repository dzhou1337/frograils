// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function drawRailTile(rail,angle){


	switch(rail){
		case "rail":
			draw_sprite_ext(spr_rail_straight,0,x+16,y+16,1,1,angle*90,c_white,1)
			//draw_sprite(spr_rail_straight,0,x,y)
			break;
		case "rail_L":
			draw_sprite_ext(spr_rail_L,0,x+16,y+16,1,1,angle*90,c_white,1)
			break;
		case -1:
			break;
	}
}