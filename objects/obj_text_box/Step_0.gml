if(keyboard_check_pressed(ord("V"))){
	if(global.estado == "inicio"){
		global.estado = "menu";
	}
	else if(global.estado == "menu"){
		global.estado = "batalha";
	}
	else if(global.estado == "batalha"){
		global.estado = "inicio";
	}
}
if(global.estado == "inicio"){
	image_alpha = 1;
}
else if(global.estado == "batalha" or global.estado == "menu"){
	image_alpha = 0;
}

if (caractere_atual < string_length(txt_completo)) {
    caractere_atual += velocidade_txt;
}

if (global.estado == "inicio" && keyboard_check_pressed(vk_enter)) {
    
    if (dialogo_atual <= dialogo_final){
		if (caractere_atual < string_length(txt_completo)){
			caractere_atual = string_length(txt_completo);
		}
		else if (contador_dialogo == dialogo_final){
			global.estado = "menu";
		}
		else {
			contador_dialogo += 1;
			caractere_atual = 0;
			dialogo_atual += 1;
			txt_completo = dialogos[dialogo_atual]
		}
		
	}
}


txt_atual = string_copy(txt_completo, 1, floor(caractere_atual));