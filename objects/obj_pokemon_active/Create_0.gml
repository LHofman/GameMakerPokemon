pokemon = ds_map_create();

if (!variable_global_exists("pokemon")) {
	global.pokemon = ds_map_create();
}

ds_map_set(global.pokemon, my_index, pokemon);

pokemon[? "id"] = int64(floor(random(151)) + 1);
pokemon[? "name"] = "";
pokemon[? "types"] = [];
pokemon[? "moves"] = [];
pokemon[? "stats"] = ds_map_create();
pokemon[? "stats"][? "total"] = ds_map_create();
pokemon[? "stats"][? "current"] = ds_map_create();

api_result_id = http_get(string_concat("https://pokeapi.co/api/v2/pokemon/", pokemon[? "id"]));
