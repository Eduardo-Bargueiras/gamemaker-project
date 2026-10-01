if (keyboard_check_pressed(ord("D"))) {
    if (card_atual < total_bosses - 1) {
        card_atual += 1;
    }
}

if (keyboard_check_pressed(ord("A"))) {
    if (card_atual > 0) {
        card_atual -= 1;
    }
}

var x_alvo = card_atual * 500; 
x_suave = x_suave + (x_alvo - x_suave) * 0.1;

if (keyboard_check_pressed(vk_enter)){
    switch(card_atual) {
        case 0: room_goto(rm_niko_room); break;
        // case 1: room_goto(luta_futura); break;
    }
}
