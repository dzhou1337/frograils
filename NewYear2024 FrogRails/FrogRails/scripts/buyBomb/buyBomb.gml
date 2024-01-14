// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function buyBomb(){
	if ds_map_exists(obj_inventory.itemToSlotMap, "bomb"){
		slot = obj_inventory.itemToSlotMap[? "bomb"]
		slot.count += 1
	} else {
	//if we don't have bomb, add bomb to first empty slot
		for(var i = 0; i < ds_list_size(obj_inventory.slotList); i++){
			slot = ds_list_find_value(obj_inventory.slotList, i)
			
			if (slot.count == 0){
				slot.itemType = "bomb"
				slot.count = 1
				ds_map_add(obj_inventory.itemToSlotMap, "bomb", slot)
				break
			}
			
		}
		
		//if we reach here, there's nowhere to put this inventory item
	}
}