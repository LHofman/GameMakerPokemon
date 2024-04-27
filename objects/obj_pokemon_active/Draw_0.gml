draw_self();



var _types_string = string_join_ext(", ", pokemon[? "types"]);
var _current_hp = pokemon[? "stats"][? "current"][? "hp"];
var _total_hp = pokemon[? "stats"][? "total"][? "hp"];

var _text = string_join(
	"",
	pokemon[? "name"],
	" (",
	_types_string,
	") ",
	"hp: ",
	_current_hp,
	"/",
	_total_hp
);

draw_text(x, y - 35, _text);