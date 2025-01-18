uci set wireless.default_radio0.ssid=WDSLR-5G-$(cat /sys/class/ieee80211/phy0/macaddress|awk -F ":" '{print $5""$6 }')
uci set wireless.default_radio1.ssid=WDSLR-$(cat /sys/class/ieee80211/phy0/macaddress|awk -F ":" '{print $5""$6 }')
uci set wireless.radio0.disabled=1
uci set network.lan.ipaddr='192.168.101.1'
uci set system.cfg01e48a.hostname=dslr-$(cat /sys/class/ieee80211/phy0/macaddress|awk -F ":" '{print $5""$6 }')

sed -i 's/root::0:0:99999:7:::/root:$1$fD5UO6dn$vrhOjDjV65/PkN8U1m0jX0:20106:0:99999:7:::/g' /etc/shadow
sed -i 's/root:::0:99999:7:::/root:$1$fD5UO6dn$vrhOjDjV65/PkN8U1m0jX0:20106:0:99999:7:::/g' /etc/shadow

# 设置所有网口可访问网页终端
uci delete ttyd.@ttyd[0].interface

# 设置所有网口可连接 SSH
uci set dropbear.@dropbear[0].Interface=''

uci commit
