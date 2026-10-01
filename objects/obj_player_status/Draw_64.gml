draw_set_font(font_undertale);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);

var _pos_x = 40; 
var _pos_y = 388; 

draw_text_ext_transformed(_pos_x, _pos_y, player_name, 5, 150, 2, 2, 0);
var _fim_nome_x = _pos_x + (string_width(player_name) * 2);

var _lv_label_x = _fim_nome_x + 24;
draw_text_ext_transformed(_lv_label_x, _pos_y, "LV ", 5, 150, 2, 2, 0);

var _lv_num_x = _lv_label_x + (string_width("LV ") * 2);
draw_text_ext_transformed(_lv_num_x, _pos_y, player_level, 5, 150, 2, 2, 0);

var _hp_label_x = _lv_num_x + (string_width(string(player_level)) * 2) + 32;
draw_text_ext_transformed(_hp_label_x, _pos_y + 5, "HP", 5, 150, 1.5, 1.5, 0);

var _bar_x = _hp_label_x + 32;
var _bar_y = _pos_y + 8;

var _max_bar_width = 120; 
var _bar_height_fix = 16; 

var _largura_corte = _max_bar_width * (player_hp / player_max_hp);

draw_set_color(c_red);
draw_rectangle(_bar_x, _bar_y, _bar_x + _max_bar_width, _bar_y + 10 + _bar_height_fix, false);

if (player_hp > 0) {
    draw_set_color(c_yellow);
    draw_rectangle(_bar_x, _bar_y, _bar_x + _largura_corte, _bar_y + 10 + _bar_height_fix, false);
}

draw_set_color(c_white);
var _texto_hp = string(player_hp) + " / " + string(player_max_hp);
draw_text_ext_transformed(_bar_x + _max_bar_width + 15, _pos_y, _texto_hp, 5, 150, 2, 2, 0);
