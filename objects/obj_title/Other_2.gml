global.start_room = rm_menu;
global.start_x = 140;
global.start_y = 140;
global.new_game = false;

if (file_exists("underc.ini")) {
    ini_open("underc.ini");
    
    var _room_name = ini_read_string("Save1", "room", "rm_menu");
    
    global.start_room = asset_get_index(_room_name);
    
    if (global.start_room == -1) {
        global.start_room = rm_menu;
    }
    
    global.start_x = ini_read_real("Save1", "x", 140);
    global.start_y = ini_read_real("Save1", "y", 140);
    
    ini_close();
}
