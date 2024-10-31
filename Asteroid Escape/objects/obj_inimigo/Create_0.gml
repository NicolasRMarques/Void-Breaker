if (x == 1280) {
    image_xscale = -1; // Espelha a imagem se o objeto for criado em x = 1280
    speed *= -1; // Move para a esquerda
} else {
    image_xscale = 1;  // Não espelha se o objeto for criado em x = 0
    speed *= 1; // Move para a direita
}
