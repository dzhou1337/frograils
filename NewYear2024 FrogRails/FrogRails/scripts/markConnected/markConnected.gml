// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function markConnected(cityIndex){
	switch(cityIndex){
		case(46):
			obj_map.citiesConnected[0] = true
			break
		case(62):
			obj_map.citiesConnected[1] = true
			break
		case(169):
			obj_map.citiesConnected[2] = true
			break
		case(245):
			obj_map.citiesConnected[3] = true
			break
		case(247):
			obj_map.citiesConnected[4] = true
			break
		case(275):
			obj_map.citiesConnected[5] = true
			break
		
	}
}