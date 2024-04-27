function get_pokemon_stats(_pokemon_obj) {
	var _stats_list = ds_list_to_array(_pokemon_obj[? "stats"]);
	
	var _stats = ds_map_create();
	for (var _i = 0; _i < array_length(_stats_list); _i++) {
		_stats[? _stats_list[_i][? "stat"][? "name"]] = _stats_list[_i][? "base_stat"];
	}
	
	return _stats;
}