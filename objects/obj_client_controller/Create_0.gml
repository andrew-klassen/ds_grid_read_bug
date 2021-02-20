/// @description initialize

global.tcp_client = network_create_socket(network_socket_tcp)
network_connect(global.tcp_client, "127.0.0.1", 5555)


global.client_player_movement_buffer = buffer_create(50, buffer_grow, 1)
