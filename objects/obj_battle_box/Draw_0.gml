if(inicio == false){
	var posicao_y = 225;
	var posicao_x = 320 - (largura_atual / 2);

	var altura_fixa = 160;

	draw_sprite_stretched(spr_battle_box, 0, posicao_x, posicao_y, largura_atual, altura_fixa);
}
else if(inicio == true){
	image_alpha = 0;
}