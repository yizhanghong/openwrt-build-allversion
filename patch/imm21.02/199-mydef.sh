#!/bin/sh

uci set wireless.radio0.cell_density=0
uci set wireless.default_radio0.ssid=CMCC-$(cat /sys/class/ieee80211/phy0/macaddress|awk -F ":" '{print $3""$4 }' | tr 'a-z' 'A-Z')-2.4G
uci set wireless.default_radio1.ssid=CMCC-$(cat /sys/class/ieee80211/phy0/macaddress|awk -F ":" '{print $5""$6 }' | tr 'a-z' 'A-Z')-5G
uci set wireless.default_radio0.encryption='psk2'
uci set wireless.default_radio0.key='123456qwerty'
uci set wireless.default_radio1.encryption='psk2'
uci set wireless.default_radio1.key='123456qwerty'
uci set wireless.radio1.channel='149'
#uci set wireless.radio1.disabled=1
#uci set network.lan.ipaddr='192.168.101.1'
uci set system.cfg01e48a.hostname=OpenWrt-$(cat /sys/class/ieee80211/phy0/macaddress|awk -F ":" '{print $3""$4 }' | tr 'a-z' 'A-Z')

# 设置所有网口可访问网页终端
uci delete ttyd.@ttyd[0].interface

# 设置所有网口可连接 SSH
uci set dropbear.@dropbear[0].Interface=''

uci commit

#sed -i 's/root::0:0:99999:7:::/root:$1$NdH27HBE$dmUpSX8x61asq1ewgkEvz1:20110:0:99999:7:::/g' /etc/shadow
#sed -i 's/root:::0:99999:7:::/root:$1$NdH27HBE$dmUpSX8x61asq1ewgkEvz1:20110:0:99999:7:::/g' /etc/shadow

#wget -P /usr/sha/ https://testingcf.jsdelivr.net/gh/HiboyHiboy/opt-file/Advanced_Extensions_virtualhereasp

sed -ri '/check_signature/s@^[^#]@#&@' /etc/opkg.conf

wifi up
/etc/init.d/network restart
sleep 2
/etc/init.d/system restart

exit 0
