uci set network.wan.proto='pppoe'
uci set network.wan.username='037606332332'
uci set network.wan.password='332332'

uci set network.lan.delegate='0'
uci set network.lan.ip6assign='64'
uci set network.lan.ip6ifaceid='random'

uci del network.globals.ula_prefix

uci del network.wan6

uci del dhcp.lan.ra_slaac
uci del dhcp.lan.dhcpv6
uci del dhcp.lan.ra_flags
uci add_list dhcp.lan.ra_flags='none'
uci set dhcp.lan.dns_service='0'

uci commit

exit 0
