[Interface]
Address = $_VPN_IP
PrivateKey = $_PRIVATE_KEY
MTU = 1280

[Peer]
PublicKey = $_SERVER_PUBLIC_KEY
PresharedKey = $_PRESHARED_KEY
AllowedIPs = 0.0.0.0/0
Endpoint = $_SERVER_LISTEN
PersistentKeepalive = 25
