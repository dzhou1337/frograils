/// @description Insert description here
// You can write your code in this editor
if(obj_counter_money.money - cost < 0){
	show_debug_message("too poor!")
} else {
	obj_counter_money.money -= cost
	rail = getRandomRail()
	buyRail(rail)
}

