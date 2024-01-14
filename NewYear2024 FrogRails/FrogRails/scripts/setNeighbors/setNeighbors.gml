// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function setNeighbors(rail, railDirection, tileX, tileY){
	currentTile = obj_map.tileIndexArray[tileX,tileY]
	tileIndex = currentTile.index
	switch(rail){
		case("rail"):
			//straight rail going top to bottom
			if(railDirection == 0 || railDirection == 2){
				//update neighbor array
				neighbor1 = obj_map.tileIndexArray[tileX,tileY-1]
				neighbor2 = obj_map.tileIndexArray[tileX,tileY+1]	
				
			} else {
				//here if rail going left to right
				neighbor1 = obj_map.tileIndexArray[tileX+1,tileY]
				neighbor2 = obj_map.tileIndexArray[tileX-1,tileY]
			}
			
			break;
			
		case("rail_L"):
			//L rail going top to right
			if(railDirection == 0){
				neighbor1 = obj_map.tileIndexArray[tileX,tileY-1]
				neighbor2 = obj_map.tileIndexArray[tileX+1,tileY]	
			} else if(railDirection == 1){
			//L rail going top to left
				neighbor1 = obj_map.tileIndexArray[tileX,tileY-1]
				neighbor2 = obj_map.tileIndexArray[tileX-1,tileY]
			} else if(railDirection == 2){
			//L rail going bottom to left
				neighbor1 = obj_map.tileIndexArray[tileX,tileY+1]
				neighbor2 = obj_map.tileIndexArray[tileX-1,tileY]
			} else {
			//L rail going bottom to right
				neighbor1 = obj_map.tileIndexArray[tileX,tileY+1]
				neighbor2 = obj_map.tileIndexArray[tileX+1,tileY]
			}
		
			break;		
	}
	
	

	if(ds_list_find_index(obj_map.tileNeighbors[tileIndex], neighbor1.index) == -1){
		ds_list_add(obj_map.tileNeighbors[tileIndex], neighbor1.index)
	}
	if(ds_list_find_index(obj_map.tileNeighbors[tileIndex], neighbor2.index) == -1){
		ds_list_add(obj_map.tileNeighbors[tileIndex],neighbor2.index)
	}
	
	
	neighbor1IsCityorHome = obj_map.tileSingleIndexArray[neighbor1.index].isCity ||
							obj_map.tileSingleIndexArray[neighbor1.index].isHome
	neighbor2IsCityorHome = obj_map.tileSingleIndexArray[neighbor2.index].isCity ||
							obj_map.tileSingleIndexArray[neighbor2.index].isHome
	
	if(ds_list_find_index(obj_map.tileNeighbors[neighbor1.index], tileIndex) == -1 && neighbor1IsCityorHome){
		ds_list_add(obj_map.tileNeighbors[neighbor1.index], tileIndex)
	}
	if(ds_list_find_index(obj_map.tileNeighbors[neighbor2.index], tileIndex) == -1 && neighbor2IsCityorHome){
		ds_list_add(obj_map.tileNeighbors[neighbor2.index], tileIndex)
	}
	
	
	
}