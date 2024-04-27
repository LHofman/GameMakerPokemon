var _pokemon_obj = get_api_result(api_result_id);
if (!_pokemon_obj) return;

pokemon[? "name"] = get_pokemon_name(_pokemon_obj);
pokemon[? "types"] = get_pokemon_types(_pokemon_obj);
sprite_index = get_pokemon_sprite(_pokemon_obj);
pokemon[? "moves"] = get_pokemon_moves(_pokemon_obj);
pokemon[? "stats"][? "total"] = get_pokemon_stats(_pokemon_obj);
pokemon[? "stats"][? "current"] = get_pokemon_stats(_pokemon_obj);

create_move_objects(pokemon);
