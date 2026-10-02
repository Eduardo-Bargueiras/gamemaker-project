if (global.estado == "inicio" or global.estado == "menu"){
	largura_alvo = 565;
}
else if (global.estado == "batalha"){
	largura_alvo = 210;
}

if(global.estado == "inicio"){
	image_alpha = 0;
}
else if(global.estado == "batalha" or global.estado == "menu"){
	image_alpha = 1;
}

largura_atual = lerp(largura_atual, largura_alvo, 0.15);