draw_self();
draw_set_font(font_undertale);
draw_set_color(c_black);

var _x_inicial = 400;
var _y_inicial = 30;
var _espaco_letras = 2;
var _espaco_linhas = 24;

var _x_atual = _x_inicial;
var _y_atual = _y_inicial;

var _total_caracteres = string_length(txt_atual);

for (var i = 1; i <= _total_caracteres; i++) {
    var _char = string_char_at(txt_atual, i);
    
    if (_char == "\n") {
        _x_atual = _x_inicial;
        _y_atual += _espaco_linhas;
        continue;
    }
    
    draw_text(_x_atual, _y_atual, _char);
    
    _x_atual += string_width(_char) + _espaco_letras;
}

