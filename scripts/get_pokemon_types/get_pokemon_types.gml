function get_pokemon_types(_pokemon_obj) {
	return array_map(
		ds_list_to_array(_pokemon_obj[? "types"]),
		function (_type) {
			return _type[? "type"][? "name"];
		}
	);
}