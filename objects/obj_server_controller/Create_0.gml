/// @description start server instance
global.tcp_server = network_create_server(network_socket_tcp, 5555, 99)

global.connection_list = ds_list_create()


