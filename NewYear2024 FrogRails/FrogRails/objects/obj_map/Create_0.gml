/// @description Insert description here
// You can write your code in this editor

//How many tiles big is the map
mapWidth = 22
mapHeight = 14

tileSize = sprite_get_width(spr_map_tile)

for (var i = 0; i < mapWidth; i++){
	
	for (var j = 0; j < mapHeight; j++){
		instance_create_depth(x + tileSize * i, y + tileSize * j, 0, obj_map_tile)
	}
	
}

