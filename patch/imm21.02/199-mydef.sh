#!/bin/sh

uci set wireless.default_radio0.ssid=WDSLR-$(cat /sys/class/ieee80211/phy0/macaddress|awk -F ":" '{print $5""$6 }')
uci set wireless.default_radio1.ssid=WDSLR-5G-$(cat /sys/class/ieee80211/phy0/macaddress|awk -F ":" '{print $5""$6 }')
uci set network.lan.ipaddr='192.168.101.1'

# 设置所有网口可访问网页终端
uci delete ttyd.@ttyd[0].interface

# 设置所有网口可连接 SSH
uci set dropbear.@dropbear[0].Interface=''

uci commit

sed -i 's/root::0:0:99999:7:::/root:$1$NdH27HBE$dmUpSX8x61asq1ewgkEvz1:20110:0:99999:7:::/g' /etc/shadow
sed -i 's/root:::0:99999:7:::/root:$1$NdH27HBE$dmUpSX8x61asq1ewgkEvz1:20110:0:99999:7:::/g' /etc/shadow

#wget -P /usr/bin/ https://testingcf.jsdelivr.net/gh/HiboyHiboy/opt-file/Advanced_Extensions_virtualhereasp
mv /etc/virtualhere /usr/share/virtualhere
chmod +x /usr/share/virtualhere
echo > /etc/rc.local
sed -i '$a wifi down radio1' /etc/rc.local
sed -i '$a cd /usr/share' /etc/rc.local
sed -i '$a ./virtualhere -b' /etc/rc.local
sed -i '$a exit 0' /etc/rc.local

sed -ri '/check_signature/s@^[^#]@#&@' /etc/opkg.conf

exit 0
