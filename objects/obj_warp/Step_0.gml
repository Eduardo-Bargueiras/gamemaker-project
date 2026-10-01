if place_meeting(x, y, obj_player) and !instance_exists(obj_fade){
	var instantied = instance_create_depth(0, 0, -9999, obj_fade)
	instantied.target_x = target_x
	instantied.target_y = target_y
	instantied.target_room = target_room
	instantied.facing = facing
}