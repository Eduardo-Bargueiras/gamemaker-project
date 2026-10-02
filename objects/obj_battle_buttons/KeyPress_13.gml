if(global.estado == "menu" && escolha == false){
	if (escolha_atual == "fight"){
		escolha = true;
		sprite_index = spr_battle_buttons_chose;
		image_index = 0;
	}
	if (escolha_atual == "act"){
		escolha = true;
		sprite_index = spr_battle_buttons_chose;
		image_index = 1;
	}
	if (escolha_atual == "item"){
		escolha = true;
		sprite_index = spr_battle_buttons_chose;
		image_index = 2;
	}
	if (escolha_atual == "mercy"){
		escolha = true;
		sprite_index = spr_battle_buttons_chose;
		image_index = 3;
	}
}