// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function findPathRecur(index, path){
	currentTile = obj_map.tileSingleIndexArray[index]
	ds_list_add(path, index)

	show_debug_message("recur " + string(index) + " " + string(currentTile.index))
	if (currentTile.isCity){
		return "hello"
	} else {
		neighbors = obj_map.tileNeighbors[index]
		numOfNeighbors = ds_list_size(neighbors)
		show_debug_message("neighbors: " + string(numOfNeighbors))

		for (i = 0; i < numOfNeighbors; i++){
			nextTileIndex = ds_list_find_value(neighbors, i)
			nextHasNeighbors = ds_list_empty(obj_map.tileNeighbors[nextTileIndex])
			if (ds_list_find_index(path,nextTileIndex) = -1 && !nextHasNeighbors){
				findPathRecur(nextTileIndex,path)
			}
			
		}
		
		
	}
	
}