var chao = place_meeting(x, y + 1, obj_bloco);

if (!chao) {
	velv += GRAVIDADE * massa;
}

if (mouse_check_button_pressed(mb_middle)) {
	estado = "ataque";
}

switch (estado) {
	#region PARADO
	case "parado":
		velh = 0;
		timer_estado++;
		
		if (sprite_index != spr_inimigo_esqueleto_idle) {
			image_index = 0;
		}
		
		sprite_index = spr_inimigo_esqueleto_idle;
		
		//condição de troca de estado
		if (position_meeting(mouse_x, mouse_y, self)) {
			if (mouse_check_button_pressed(mb_right)) {
				estado = "dano";
			}
		}
		
		//indo para o estado de andar
		if (irandom(timer_estado) > 300) {
			estado = choose("andar", "parado", "andar");
			timer_estado = 0;
		}
		
	break;
	#endregion
	
	#region ANDAR
		case "andar":
			timer_estado++;
			
			if (sprite_index != spr_inimigo_esqueleto_walk) {
				image_index = 0;
				velh = choose(1, -1);
			}
			
			sprite_index = spr_inimigo_esqueleto_walk;
			
			//condição de sair do estado
			if (irandom(timer_estado) > 300) {
				estado = choose("parado", "andar", "parado");
				timer_estado = 0;
			}
		break;
	#endregion
	
	#region ATAQUE
	case "ataque":
		velh = 0;
		if (sprite_index != spr_inimigo_esqueleto_ataque) {
			image_index = 0;
		}
		
		sprite_index = spr_inimigo_esqueleto_ataque;
		
		if (image_index > image_number - 1) {
			estado = "parado";
		}
		
		//saindo do estado
	break;
	#endregion
	
	#region DANO
	case "dano":
		velh = 0;
		if (sprite_index != spr_inimigo_esqueleto_hit) {
			//inicinado o que for preciso para esse estado
			image_index = 0;
			//vida_atual--;
		}
		
		sprite_index = spr_inimigo_esqueleto_hit;

		//condição para sair do estado
		if (vida_atual > 0) {
			if (image_index > image_number - 1) {
				estado = "parado";
			} 
		} else {
			if (image_index >= 3) {
				estado = "morto";
			}
		}
	break;
	#endregion
	
	#region MORTO
	velh = 0;
	case "morto":
		if (sprite_index != spr_inimigo_esqueleto_morto) {
			//inicinado o que for preciso para esse estado
			image_index = 0;
		}
			
		sprite_index = spr_inimigo_esqueleto_morto;

		//morrendo de verdade
		if (image_index > image_number - 1) {
			image_speed = 0;
			image_alpha -= .01;
			
			if (image_alpha <= 0) {
				instance_destroy();
			}
		}
	break;
	#endregion
}