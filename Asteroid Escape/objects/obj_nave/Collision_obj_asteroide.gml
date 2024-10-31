lives -= 1;

audio_play_sound(snd_kabum,1,false);

if(lives <= 0){
	instance_destroy();
}

with(other){
    instance_destroy();
    repeat(80){ // Criar mais partículas para um efeito melhor
        var part = instance_create_layer(x, y, "Instances", obj_particula);
        
        // Tamanho aleatório das partículas
        part.image_xscale = random_range(0.5, 1.5);
        part.image_yscale = part.image_xscale; // Manter a proporção
        
        // Cor aleatória (entre vermelho e amarelo)
        part.image_blend = make_color_rgb(irandom_range(200,255), irandom_range(100, 150), 0);
        
        // Velocidade e direção aleatória (explosão radial)
        part.speed = random_range(2, 4); // Velocidade variável
        part.direction = random(360); // Direção aleatória (explosão em todas as direções)
        
    }
}


