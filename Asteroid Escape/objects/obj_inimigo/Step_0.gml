var frequency = 5;
var range = 50;
speed = 5;

// Guardar as posições anteriores
var prev_x = x;
var prev_y = y;

// Atualizar as posições
y += cos(x * frequency) * range;
x += speed;

// Calcular a diferença de movimento
var dx = x - prev_x;
var dy = y - prev_y;

// Calcular o ângulo de movimento
image_angle = point_direction(prev_x, prev_y, x, y);
