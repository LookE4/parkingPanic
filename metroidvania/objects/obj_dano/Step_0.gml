var outro = instance_place(x, y, obj_entidade);

//se eu estou tocando em alguem
if (outro) {
	
	//se eu não estou tocando no meu pai
	if (outro.id != pai) {
		if (outro.vida_atual > 0) {
			outro.estado = "dano";
			outro.image_index = 0;
			outro.vida_atual -= dano;
			instance_destroy();
		}
	}
}