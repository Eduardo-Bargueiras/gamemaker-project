// Novos valores matemáticos para centralizar em 640x480
var centro_x = 320;        // Metade de 640 (Centro horizontal exato)
var centro_y = 240;        // Metade de 480 (Centro vertical exato)
var espacamento = 400;     // Reduzido para caber bem na tela de 640
var escala_pixel = 2;      // Mantido em 2x baseado no tamanho do seu sprite da foto

// Define a fonte para ser a de undertale e coloca alinhamento
draw_set_font(font_undertale);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Define que pra cada boss na lista vai ser desenhado um card
for (var i = 0; i < total_bosses; i++) {
    
    var card_x = centro_x + (i * espacamento) - x_suave;
    
    // Otimização de renderização para a tela de 640px
    if (card_x > -200 && card_x < 840) {
        
        // 1. Desenha o card e o sprite do boss centralizados
        draw_sprite_ext(spr_boss_card, 0, card_x, centro_y, escala_pixel, escala_pixel, 0, c_white, 1);
        draw_sprite_ext(sprite_boss[i], 0, card_x, centro_y, escala_pixel, escala_pixel, 0, c_white, 1);
        
        // 2. Nome do Boss: Agora calcula a posição baseado no centro_y do card (subindo 125 pixels)
        var texto_nome_y = centro_y - 153; 
        draw_set_color(c_white);
        draw_text_ext_transformed(card_x, texto_nome_y, nome_boss[i], 2, 150, escala_pixel, escala_pixel, 0);
        
        // 3. Botão Play: Agora calcula a posição baseado no centro_y do card (descendo 125 pixels)
        var texto_play_y = centro_y + 115;
        
        if (card_atual == i) {
            // Dica visual: Em Undertale o padrão de seleção é amarelo (c_yellow), mas mude se preferir o azul!
            draw_set_color(c_blue); 
        } else {
            draw_set_color(c_white);
        }
        draw_text_ext_transformed(card_x, texto_play_y, "Play", 2, 150, escala_pixel, escala_pixel, 0);
    }
}
