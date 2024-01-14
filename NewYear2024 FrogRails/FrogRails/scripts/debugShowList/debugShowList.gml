// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function debugShowList(list){
	listString = ""
	for(i=0;i<ds_list_size(list);i++){
		listString += string(ds_list_find_value(list,i)) + " "
	}
	show_debug_message(listString)
}