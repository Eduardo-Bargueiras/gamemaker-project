if(keyboard_check_pressed(ord("V"))){
	if(inicio == true){
		inicio = false;
		menu = true;
		batalha = false;
	
		largura_alvo = 565;
	}
	else if(menu == true){
		menu = false;
		batalha = true;
		inicio = false;
	
		largura_alvo = 210;
	}
	else if(batalha == true){
		batalha = false;
		menu = false;
		inicio = true;
	
		largura_alvo = 565;
	}
}
if(inicio == true){
	image_alpha = 0;
}
else if(batalha == true or menu = true){
	image_alpha = 1;
}

largura_atual = lerp(largura_atual, largura_alvo, 0.15);