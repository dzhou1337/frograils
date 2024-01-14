// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function setHomeNeighbors(){
	homeTile = obj_map.homeTile
	homeX = homeTile.xIndex
	homeY = homeTile.yIndex
	
	neighbor1 = obj_map.tileIndexArray[homeX-1][homeY]
	neighbor2 = obj_map.tileIndexArray[homeX+1][homeY]
	neighbor3 = obj_map.tileIndexArray[homeX][homeY+1]
	neighbor4 = obj_map.tileIndexArray[homeX][homeY-1]
	
	homeNeighbors = ds_list_create()
	ds_list_add(homeNeighbors,
				neighbor1.index, neighbor2.index,
			    neighbor3.index, neighbor4.index)
										
	obj_map.tileNeighbors[homeTile.index] = homeNeighbors
}