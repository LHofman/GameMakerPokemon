api_result_id = -1;

function attack(_attacker, _move) {
	attacker = _attacker;
	move = _move;
	defender = _attacker = "myActive" ? "opponentActive" : "myActive";
	
	api_result_id = http_get(_move[? "endpoint"]);
}