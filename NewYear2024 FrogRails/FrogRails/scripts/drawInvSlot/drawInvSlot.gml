// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function drawInvSlot(slot){
	draw_sprite(spr_inventory_slot,0,x,y)
	switch(slot.itemType){
		case "rail":
			draw_sprite(spr_rail_straight,0,x+16,y+16)
			draw_text(x,y,slot.count)
			break;
		case "rail_L":
			draw_sprite(spr_rail_L,0,x+16,y+16)
			draw_text(x,y,slot.count)
			break;
		case "bomb":
			draw_sprite(spr_bomb,0,x+16,y+16)
			draw_text(x,y,slot.count)
			break;	
		case -1:
			break;
	}
	
}