if(global.estado == "menu" && escolha == false){
	sprite_index = spr_battle_buttons;
	
	if (image_index == 0){
		escolha_atual = "fight";
	}
	else if (image_index == 1){
		escolha_atual = "act";
	}
	else if (image_index == 2){
		escolha_atual = "item";
	}
	else if (image_index == 3){
		escolha_atual = "mercy";
	}
}

else if(global.estado == "batalha" or global.estado == "inicio"){
	sprite_index = spr_battle_buttons_menu;
}