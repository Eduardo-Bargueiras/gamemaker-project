if (caractere_atual < string_length(txt_completo)) {
    caractere_atual += velocidade_txt;
}

txt_atual = string_copy(txt_completo, 1, floor(caractere_atual));
