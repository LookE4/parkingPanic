if (alvo == noone) {
	exit;
}

//seguindo o alvo
x = lerp(x, alvo.x, .1);
y = lerp(y, alvo.y, .1);