#region CONTROLES
var up_key    = keyboard_check(ord("W")) || keyboard_check(vk_up);
var down_key  = keyboard_check(ord("S")) || keyboard_check(vk_down);
var left_key  = keyboard_check(ord("A")) || keyboard_check(vk_left);
var right_key = keyboard_check(ord("D")) || keyboard_check(vk_right);
#endregion

#region MOVIMENTOS
if(can_exists == true){
	image_alpha = 1;
	
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

x[0] = round(x[0.3])
y[0] = round(y[0.3])
}
else if(can_exists == false){
	image_alpha = 0;
	x = 319;
	y = 311;
}

#endregion