function get_pokemon_sprite(_pokemon_obj) {
	return sprite_add(_pokemon_obj[? "sprites"][? "front_default"], 1, false, false, 0, 0);
}