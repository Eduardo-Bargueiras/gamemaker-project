#region CONTROLES
var up_key    = keyboard_check(ord("W")) || keyboard_check(vk_up);
var down_key  = keyboard_check(ord("S")) || keyboard_check(vk_down);
var left_key  = keyboard_check(ord("A")) || keyboard_check(vk_left);
var right_key = keyboard_check(ord("D")) || keyboard_check(vk_right);

#endregion

#region MOVIMENTOS
hspd = (right_key - left_key) * move_spd;
vspd = (down_key - up_key) * move_spd;


if (place_meeting(x + hspd, y, obj_colider)){
    while (!place_meeting(x + sign(hspd), y, obj_colider)){
        x += sign(hspd);
    }
    hspd = 0;
}
x += hspd;

if (place_meeting(x, y + vspd, obj_colider)){
    while (!place_meeting(x, y + sign(vspd), obj_colider)){
        y += sign(vspd);
    }
    vspd = 0;
}
y += vspd;

#endregion

#region ANIMAÇÃO
if (hspd > 0){
	sprite_index = spr_player_right
}
else if (hspd < 0){
	sprite_index = spr_player_left
}
else if (vspd < 0){
	sprite_index = spr_player_up
}
else if (vspd > 0){
	sprite_index = spr_player_down
}

if (hspd != 0 or vspd != 0){
	image_speed = 1
}
else{
	image_speed = 0
	image_index = 0
}

x[0] = round(x[0.3])
y[0] = round(y[0.3])

if(sprite_index = spr_player_down){
	facing_direction = 2
}
if(sprite_index = spr_player_up){
	facing_direction = 3
}
if(sprite_index = spr_player_right){
	facing_direction = 0
}
if(sprite_index = spr_player_left){
	facing_direction = 1
}
#endregion