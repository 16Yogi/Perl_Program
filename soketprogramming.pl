use Socket

$port = 53;
$server = "172.21.22.209";
bind(SOCKET,pack_sockaddr_in($port,ine_aton($server_ip_address)))
or die "Can't bind to port $port\n"