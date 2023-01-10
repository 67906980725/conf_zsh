
renavicat()
{
    rm -r ~/.config/dconf ~/.config/navicat
}

# zhrl
vpn_zhrl()
{
    sudo openvpn --cd /home/v/.config/openvpn/zhrl --config client.ovpn
}