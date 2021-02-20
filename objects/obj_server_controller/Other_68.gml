/// @description packets from client

var packet_type = ds_map_find_value(async_load, "type")
client_socket = ds_map_find_value(async_load, "socket")


if (packet_type == network_type_connect) {
	ds_list_add(global.connection_list, client_socket)
}
else {
	buffer = ds_map_find_value(async_load, "buffer")
	
	var temp_string = buffer_read(buffer, buffer_string)
	var temp_grid = ds_grid_create(10,20)
	
	// the read line below is what causes the leak
	// by placing it in a for loop i can acelerate the crash or make the problem more
	// noticable
	for (var i = 0; i < 1000; ++i) {
		ds_grid_read(temp_grid, temp_string)
	}
	
	ds_grid_copy(global.player_grid, temp_grid)
	
	// destroying the grid does not fix the issue
	ds_grid_destroy(temp_grid)
}