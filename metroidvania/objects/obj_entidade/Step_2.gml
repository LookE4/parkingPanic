// Aplicar gravidade
velv += GRAVIDADE;

// Movimento vertical
var _dest_y = y + velv;
if (!place_meeting(x, _dest_y, obj_bloco)) {
    y += velv;
} else {
    while (!place_meeting(x, y + sign(velv), obj_bloco)) {
        y += sign(velv);
    }
    velv = 0;
}

// Movimento horizontal
var _dest_x = x + velh;
if (!place_meeting(_dest_x, y, obj_bloco)) {
    x += velh;
} else {
    while (!place_meeting(x + sign(velh), y, obj_bloco)) {
        x += sign(velh);
    }
    velh = 0;
}