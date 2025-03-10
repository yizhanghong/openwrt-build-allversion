#!/bin/sh

# 设置所有网口可访问网页终端
uci delete ttyd.@ttyd[0].interface

# 设置所有网口可连接 SSH
uci set dropbear.@dropbear[0].Interface=''

sed -ri '/check_signature/s@^[^#]@#&@' /etc/opkg.conf
sed -i 's#downloads.openwrt.org#mirrors.pku.edu.cn/openwrt#g' /etc/opkg/distfeeds.conf
#其他网络设置
uci del wireless.radio0.disabled
uci del wireless.default_radio0.disabled
uci del wireless.radio1.disabled
uci del wireless.default_radio1.disabled
uci commit

mkdir /root/diy
mv /etc/8929.gz /root/diy/8929.gz
sysupgrade --restore-backup /root/diy/8929.gz

wifi up
/etc/init.d/network restart
exit 0
