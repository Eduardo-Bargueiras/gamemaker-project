room_goto(target_room)
obj_player.x = target_x
obj_player.y = target_y

if (facing = 0){
	obj_player.sprite_index = spr_player_right
}
if (facing = 1){
	obj_player.sprite_index = spr_player_left
}
if (facing = 2){
	obj_player.sprite_index = spr_player_down
}
if (facing = 3){
	obj_player.sprite_index = spr_player_up
}

image_speed = -1