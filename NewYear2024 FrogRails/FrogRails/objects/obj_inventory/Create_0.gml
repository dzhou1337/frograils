/// @description Insert description here
// You can write your code in this editor

//Slots arrangement
mapWidth = 4
mapHeight = 4

tileSize = sprite_get_width(spr_inventory_slot)
slotList = ds_list_create()

itemToSlotMap = ds_map_create()

activeItem = -1
/*
	0 = no spin
	1 = 90 deg
	2 = 180 deg
	3 = 270
*/
activeItemRotate = 0

slotIndex = 0
for (var i = 0; i < mapWidth; i++){
	
	for (var j = 0; j < mapHeight; j++){
		slot = instance_create_depth(x + (tileSize+16) * j, y + (tileSize+8) * i, 0, obj_inventory_slot)
		slot.index = slotIndex
		slotIndex++
		
		ds_list_add(slotList,slot)
		show_debug_message(ds_list_find_value(slotList,slotIndex-1).index)
	}
	
}

