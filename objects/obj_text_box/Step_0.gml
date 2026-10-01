if(keyboard_check_pressed(ord("V"))){
	if(inicio == true){
		inicio = false;
		menu = true;
		batalha = false;
	}
	else if(menu == true){
		menu = false;
		batalha = true;
		inicio = false;
	}
	else if(batalha == true){
		batalha = false;
		menu = false;
		inicio = true;
	}
}
if(inicio == true){
	image_alpha = 1;
}
else if(batalha == true or menu = true){
	image_alpha = 0;
}

if (caractere_atual < string_length(txt_completo)) {
    caractere_atual += velocidade_txt;
}

txt_atual = string_copy(txt_completo, 1, floor(caractere_atual));
