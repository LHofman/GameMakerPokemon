var _move_obj = get_api_result(api_result_id);
if (!_move_obj) return;

var _damage_class = _move_obj[? "damage_class"][? "name"];
var _power = _move_obj[? "power"];

var _damage = 0;
if (!array_contains(["physical", "special"], _damage_class)) {
	show_debug_message(string_concat("unhandled damage class: ", _damage_class));
	_power = 0;
} else {
	var _level = 1;
	var _crit = 1;
	var _attack = 1;
	var _defence = 1;
	var _stab = 1;
	var _type1 = 1;
	var _type2 = 1;
	var _rng = 1;
	
	// https://bulbapedia.bulbagarden.net/wiki/Damage#Damage_calculation
	_damage = 2 * _level * _crit;
	_damage /= 5;
	_damage += 2;
	_damage *= _power;
	_damage *= (_attack / _defence);
	_damage /= 50;
	_damage += 2;
	_damage *= _stab;
	_damage *= _type1;
	_damage *= _type2;
	_damage *= _rng;
	_damage = floor(_damage);
}

with (obj_game) {
	var _pokemon_name = global.pokemon[? other.attacker][? "name"];
	var _move_name = other.move[? "name"];
	
	global.pokemon[? other.defender][? "stats"][? "current"][? "hp"] -= _damage;
		
	var _log_text = string_concat(_pokemon_name, " used ", _move_name, " power ", _power, " damage ", _damage);
	log(_log_text);
}