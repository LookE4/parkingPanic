//iniciando variaveis
var right, left, jump, attack, dash;
var chao = place_meeting(x, y + 1, obj_bloco);

right = keyboard_check(ord("D"));
left = keyboard_check(ord("A"));
jump = keyboard_check(vk_space);
attack = mouse_check_button(mb_left);
dash = keyboard_check_pressed(vk_shift);

if (keyboard_check(vk_tab)) {
	room_restart();
}

if (ataque_buff > 0) {
	ataque_buff -= 5;
}

//aplicando grav
if (!chao) {
	
	if (velv < max_velv * 2) {
		velv += GRAVIDADE * massa;
	}
} 

//codigo de movimentação
velh = (right - left) * max_velh;

//inicinado a maquina de estado
switch (estado) {
	#region PARADO
	case "parado":
		//comportamento do estado
		sprite_index = spr_player_parado1;
		
		//condição de troca de estado
		//movendo
		if (right || left) {
			
			estado = "movendo";
		} else if (jump || velv != 0) {
			
			estado = "pulando";
			velv = (-max_velv * jump);
			image_index = 0;
		} else if (attack) {
			
			estado = "ataque";
			velh = 0;
			image_index = 0;
		} else if (dash) {
			estado = "dash";
			image_index = 0;
		}
	break;
	#endregion
	
	#region MOVENDO
	case "movendo":
		//comportamento do estado de movimento
		sprite_index = spr_player_run;

		//condição de troca de estado
		//pradao
		if (abs(velh == 0)) {
			
			estado = "parado";
			velh = 0;
		} else if (jump || velv != 0) {
			
			estado = "pulando";
			velv = (-max_velv * jump);
			image_index = 0;
		} else if (attack) {
			
			estado = "ataque";
			velh = 0;
			image_index = 0;
		} else if (dash) {
			estado = "dash";
			image_index = 0;
		}
	break;
	#endregion
	
	#region PULANDO
	case "pulando":
		//estou caindo
		if (velv > 0) {
			sprite_index = spr_player_fall
		} else {
			sprite_index = spr_player_pulo;
			//garantindo que a animação não se repita
			if (image_index >= image_number - 1) {
				image_index = image_number - 1;
			}
		}
		
		//condição de troca de estado
		if (chao) {
			estado = "parado";
			velh = 0;
		}
	break;
	#endregion
	
	#region ATAQUE
	case "ataque":
		velh = 0;
		
		if (combo == 0) {
			sprite_index = spr_player_ataque1;
		} else if (combo == 1) {
			sprite_index = spr_player_ataque2;
		} else if (combo == 2) {
			sprite_index = spr_player_ataque3;
		}
		
		//criando o objeto de dano
		if (image_index >= 2 && dano == noone && posso) {
			dano = instance_create_layer(x + sprite_width / 2, y - sprite_height / 2, layer, obj_dano);
			dano.dano = ataque * ataque_mult;
			dano.pai = id;
			posso = false;
		}
		
		//configurando com o buff
		if (attack && combo < 2) {
			ataque_buff = room_speed;
		}
		
		if (ataque_buff && combo < 2 && image_index >= image_number - 1) {
			combo++;
			image_index = 0;
			posso = true;
			ataque_mult += .5;
			if (dano) {
				instance_destroy(dano, false);
				dano = noone;
			}
			//zerar o buffer
			ataque_buff = 0;
		}
		
		if (image_index > image_number - 1) {
			estado = "parado";
			velh = 0;
			combo = 0;
			posso = true;
			ataque_mult = 0;
			if (dano) {
				instance_destroy(dano, false);
				dano = noone;
			}
		}
		
		if (dash) {
			estado = "dash";
			image_index = 0;
			combo = 0;
			if (dano) {
				instance_destroy(dano, false);
				dano = noone;
			}
		}
	break;
	#endregion
	
	#region DASH
		case "dash":
			sprite_index = spr_player_dash;
			
			//velocidade
			velh = image_xscale * dash_vel;
			
			//saindo do estado
			if (image_index >= image_number - 1) {
				estado = "parado";
			}
		break;
	#endregion
}