// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function buyRail(rail){
	//check if we already have rail, then add to stack
	show_debug_message("buying",rail)
	if ds_map_exists(obj_inventory.itemToSlotMap, rail){
		slot = obj_inventory.itemToSlotMap[? rail]
		slot.count += 1
	} else {
	//if we don't have rail, add rail to first empty slot
		for(var i = 0; i < ds_list_size(obj_inventory.slotList); i++){
			slot = ds_list_find_value(obj_inventory.slotList, i)
			
			if (slot.count == 0){
				slot.itemType = rail
				slot.count = 1
				ds_map_add(obj_inventory.itemToSlotMap, rail, slot)
				break
			}
			
		}
		
		//if we reach here, there's nowhere to put this inventory item
	}
	
}