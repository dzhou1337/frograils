/// @description Insert description here
// You can write your code in this editor

if (obj_inventory.activeItem = "rail" || obj_inventory.activeItem = "rail_L" && !isCity && !isMountain && !isForest && rail == -1){

	rail = obj_inventory.activeItem
	railDirection = obj_inventory.activeItemRotate
	
	setNeighbors(rail,railDirection,xIndex,yIndex)
	
	ds_list_find_value(obj_inventory.slotList, obj_inventory.activeIndex).count -= 1
	if (ds_list_find_value(obj_inventory.slotList, obj_inventory.activeIndex).count == 0){
		ds_map_delete(obj_inventory.itemToSlotMap, obj_inventory.activeItem)
		obj_inventory.activeItem = -1
		ds_list_find_value(obj_inventory.slotList, obj_inventory.activeIndex).itemType = -1
		
	}
	
	findPath()

	if(isAllConnected()){
		show_debug_message("you win")	
	}
}

if (obj_inventory.activeItem = "bomb" && isForest){
	isForest = false
	ds_list_find_value(obj_inventory.slotList, obj_inventory.activeIndex).count -= 1
	if (ds_list_find_value(obj_inventory.slotList, obj_inventory.activeIndex).count == 0){
		ds_map_delete(obj_inventory.itemToSlotMap, obj_inventory.activeItem)
		obj_inventory.activeItem = -1
		ds_list_find_value(obj_inventory.slotList, obj_inventory.activeIndex).itemType = -1
		
	}
}

/*

if (obj_inventory.activeItem = "bomb" && rail != -1){
	rail = -1
	ds_list_find_value(obj_inventory.slotList, obj_inventory.activeIndex).count -= 1
	if (ds_list_find_value(obj_inventory.slotList, obj_inventory.activeIndex).count == 0){
		ds_map_delete(obj_inventory.itemToSlotMap, obj_inventory.activeItem)
		obj_inventory.activeItem = -1
		ds_list_find_value(obj_inventory.slotList, obj_inventory.activeIndex).itemType = -1
		
	}
}

*/
