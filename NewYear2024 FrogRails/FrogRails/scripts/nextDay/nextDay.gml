// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function nextDay(){
	obj_counter_turn.turnNumber += 1
	basePay = 15
	
	for(i = 0; i < array_length(obj_map.citiesConnected); i++){
		if (obj_map.citiesConnected[i]){
			basePay += 15	
		}
	}
	obj_counter_money.money += basePay
	
	//clear inventory
	ds_map_clear(obj_inventory.itemToSlotMap)
	
	for(i = 0; i < ds_list_size(obj_inventory.slotList); i++){
		ds_list_find_value(obj_inventory.slotList, i).itemType = -1
		ds_list_find_value(obj_inventory.slotList, i).count = 0
	}
	
	obj_inventory.activeItem = -1
}