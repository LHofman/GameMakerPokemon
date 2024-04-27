function get_pokemon_moves(_pokemon_obj) {
	var _moves_data = ds_list_to_array(_pokemon_obj[? "moves"]);
	var _moves = [];
	for (var _i = 0; _i < array_length(_moves_data); _i++) {
		var _versions_data = ds_list_to_array(_moves_data[_i][? "version_group_details"]);
		for (var _j = 0; _j < array_length(_versions_data); _j++) {
			var _version_data = _versions_data[_j];
			var _version_group = _version_data[? "version_group"][? "name"];
			if (_version_group != "red-blue") {
				continue;
			}
		
			var _learn_method = _version_data[? "move_learn_method"][? "name"];
			if (_learn_method != "level-up") {
				continue;
			}
		
			var _move = ds_map_create();
			_move[? "name"] =  _moves_data[_i][? "move"][? "name"];
			_move[? "endpoint"] = _moves_data[_i][? "move"][? "url"];
			
			array_push(_moves, _move);
			break;
		}
	}
	
	return _moves;
}