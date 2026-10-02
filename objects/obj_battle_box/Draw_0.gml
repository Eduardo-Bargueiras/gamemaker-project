if(global.estado == "menu" or global.estado == "batalha"){
	var posicao_y = 225;
	var posicao_x = 320 - (largura_atual / 2);

	var altura_fixa = 160;

	draw_sprite_stretched(spr_battle_box, 0, posicao_x, posicao_y, largura_atual, altura_fixa);
}
else if(global.estado == "inicio"){
	image_alpha = 0;
}