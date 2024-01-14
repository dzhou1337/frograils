// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function findPath(){
	

	path = ds_list_create()
	visited = ds_list_create()
	start = obj_map.homeTile.index
	
	toVisit = ds_stack_create()
	for(i = 0; i < ds_list_size(obj_map.tileNeighbors[start]); i++){
		neighbor = ds_list_find_value(obj_map.tileNeighbors[start],i)
		ds_stack_push(toVisit, neighbor)
	}
	
	ds_list_add(visited, start)
	
	
	while(!ds_stack_empty(toVisit)){
		next = ds_stack_pop(toVisit)
		ds_list_add(path, next)
		ds_list_add(visited, next)
		
		if(obj_map.tileSingleIndexArray[next].isCity){
			show_debug_message("path found")
			markConnected(next)
			//show_debug_message(obj_map.citiesConnected)
			debugShowList(path)
		} 
		
		//if this tile has no more neighbors and isn't a city, clear path
		if ds_list_empty(obj_map.tileNeighbors[next]){
			ds_list_clear(path)
		} else {
		//add each neighbor to the stack
			for(i = 0; i < ds_list_size(obj_map.tileNeighbors[next]); i++){
				neighbor = ds_list_find_value(obj_map.tileNeighbors[next],i)
				//only add neighbor if we haven't looked here yet
				if(ds_list_find_index(visited, neighbor) == -1){
					ds_stack_push(toVisit, neighbor)
				}
			}
		}
	}
	debugShowList(visited)
	show_debug_message("no path")
	
}