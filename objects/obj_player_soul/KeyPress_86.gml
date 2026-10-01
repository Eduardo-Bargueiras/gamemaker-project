if(inicio == true){
	inicio = false;
	menu = true;
	batalha = false;
	can_exists = false;
}
else if(menu == true){
	menu = false;
	batalha = true;
	inicio = false;
	can_exists = true;
}
else if(batalha == true){
	batalha = false;
	menu = false;
	inicio = true;
	can_exists = false;
}