if (place_meeting(x, y, obj_player) && keyboard_check_pressed(vk_enter)) {
    
    ini_open("underc.ini");
    
    ini_write_string("Save1", "room", room_get_name(room));
    
    ini_write_real("Save1", "x", obj_player.x);
    ini_write_real("Save1", "y", obj_player.y);
    ini_write_real("Save1", "facing", obj_player.facing_direction);
    
    ini_close();
    
    show_message("Jogo Salvo com Sucesso!"); 
}
