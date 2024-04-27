function get_api_result(_api_result_id) {
	var _sync_id = async_load[? "id"];
	if _sync_id != _api_result_id {
		return;
	}

	if async_load[? "status"] != 0 {
		return;
	}

	return json_decode(async_load[? "result"]);
}