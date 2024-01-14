// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function isAllConnected(){
	for(i = 0; i < array_length(obj_map.citiesConnected); i++){
		if (!obj_map.citiesConnected[i]){
			return false
		}
	}	
	return true
}