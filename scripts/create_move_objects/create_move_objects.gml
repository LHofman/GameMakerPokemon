function create_move_objects(_pokemon) {
	for (var _i = 0; _i < array_length(_pokemon[? "moves"]); _i++) {
		var _move_obj = instance_create_layer(x, y + 100 + (_i * 20), "Instances", obj_move_active);
		_move_obj.move = _pokemon[? "moves"][_i];
		_move_obj.pokemon = my_index;
	}
}