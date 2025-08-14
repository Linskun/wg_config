[Interface]
Address = $_SERVER_IP
ListenPort = $_SERVER_PORT
PrivateKey = $_SERVER_PRIVATE_KEY
MTU = $_SERVER_MTU
PostUp = iptables -A FORWARD -i %i -j ACCEPT; iptables -A FORWARD -o %i -j ACCEPT; iptables -t nat -A POSTROUTING -o $_SERVER_LOCAL_INTERFACE -j MASQUERADE
PostDown = iptables -D FORWARD -i %i -j ACCEPT; iptables -D FORWARD -o %i -j ACCEPT; iptables -t nat -D POSTROUTING -o $_SERVER_LOCAL_INTERFACE -j MASQUERADE
