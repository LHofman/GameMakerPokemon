// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ds_list_to_array(_ds_list) {
	var _array = [];
	for (var _i = 0; _i < ds_list_size(_ds_list); _i++) {
		var _element = ds_list_find_value(_ds_list, _i);
		_array[_i] = _element;
	}
	
	return _array;
}