// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function debugShowNeighbors(){
	for(i = 0; i < array_length(obj_map.tileNeighbors); i++){
		if (!ds_list_empty(obj_map.tileNeighbors[i])){
			neighbors = ""
			for (j = 0; j < ds_list_size(obj_map.tileNeighbors[i]); j++){
				neighbors = neighbors + ", " + string(ds_list_find_value(obj_map.tileNeighbors[i],j))
			}
			
			show_debug_message(string(i) + ": " + neighbors)
		}
	}

}