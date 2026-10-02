if(global.estado == "menu" && escolha == true){
	if (escolha_atual == "fight"){
		escolha = false;
		sprite_index = spr_battle_buttons;
		image_index = 0;
	}
	if (escolha_atual == "act"){
		escolha = false;
		sprite_index = spr_battle_buttons;
		image_index = 1;
	}
	if (escolha_atual == "item"){
		escolha = false;
		sprite_index = spr_battle_buttons;
		image_index = 2;
	}
	if (escolha_atual == "mercy"){
		escolha = false;
		sprite_index = spr_battle_buttons;
		image_index = 3;
	}
}