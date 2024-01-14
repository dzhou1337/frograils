/// @description Insert description here
// You can write your code in this editor
draw_sprite(spr_map_tile,0,x,y)
drawRailTile(rail,railDirection)

if(isCity){
	draw_sprite(spr_city,0,x,y)
}

if(isHome){
	draw_sprite(spr_home,0,x,y)
}
if(isMountain){
	draw_sprite(spr_mountain,0,x,y)
}
if(isForest){
	draw_sprite(spr_forest,0,x,y)
}

//draw_text(x,y,index)

/*
draw_text(x,y,xIndex)
draw_text(x+5,y,yIndex)
*/
