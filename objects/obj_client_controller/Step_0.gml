/// @description send grid to server
buffer_seek(global.client_player_movement_buffer, buffer_seek_start, 0)
buffer_write(global.client_player_movement_buffer, buffer_string, ds_grid_write(global.player_grid))

network_send_packet(global.tcp_client, global.client_player_movement_buffer, buffer_tell(global.client_player_movement_buffer))