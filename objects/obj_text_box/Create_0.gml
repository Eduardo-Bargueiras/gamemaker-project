global.estado = "inicio";

image_xscale = 0.9;
image_yscale = 0.7;

dialogos = [
    "...Oi.",
    "Voce e o FeLa-\nLost, certo?",
    "Eu nao acho que \na gente deveria \nlutar...",
    "Eu fiz alguma\ncoisa para \nvoce vir ate \naqui??",
    "...",
    "Tem alguma coi-\nsa errada.",
    "Tem alguem ai??",
	"..."
];

dialogo_atual = 0;
contador_dialogo = 0;
dialogo_final = 7;

txt_completo = dialogos[dialogo_atual];
txt_atual = "";

caractere_atual = 0;
velocidade_txt = 0.35;