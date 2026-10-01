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