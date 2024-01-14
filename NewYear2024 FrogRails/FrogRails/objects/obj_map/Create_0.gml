/// @description Insert description here
// You can write your code in this editor

//How many tiles big is the map
mapWidth = 22
mapHeight = 14

tileSize = sprite_get_width(spr_map_tile)

indexCount = 0

//for easy tracking of what tiles are adjacent
tileIndexArray[0][0] = -1
tileSingleIndexArray[0] = -1

tileNeighbors[0] = -1

for (var i = 0; i < mapHeight; i++){
	
	for (var j = 0; j < mapWidth; j++){
		tile = instance_create_depth(x + tileSize * j, y + tileSize * i, 0, obj_map_tile)
		tile.xIndex = j
		tile.yIndex = i
		tile.index = indexCount
		
		tileIndexArray[j][i] = tile
		tileSingleIndexArray[indexCount] = tile
		tileNeighbors[indexCount] = ds_list_create()
		
		indexCount++
	}
	
}

tileIndexArray[11][7].isHome = true

//manually set these tiles to be city tiles
tileIndexArray[15][7].isCity = true
tileIndexArray[11][12].isCity = true
tileIndexArray[2][2].isCity = true
tileIndexArray[3][11].isCity = true
tileIndexArray[5][11].isCity = true
tileIndexArray[18][2].isCity = true

//track if cities are on the rail network
citiesConnected = [false, false, false, false, false, false]

homeTile = tileIndexArray[11][7]



