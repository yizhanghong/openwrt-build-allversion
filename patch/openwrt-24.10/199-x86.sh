#!/bin/sh

# 设置默认防火墙规则，方便虚拟机首次访问 WebUI
#uci set firewall.@zone[1].input='ACCEPT'

# 设置所有网口可访问网页终端
uci delete ttyd.@ttyd[0].interface

# 设置所有网口可连接 SSH
uci set dropbear.@dropbear[0].Interface=''

#其他网络设置
uci del wireless.radio0.disabled
uci del wireless.default_radio0.disabled
uci set network.lan.ip6assign='64'
uci set network.lan.ip6ifaceid='eui64'

uci commit

# 设置编译作者信息
#FILE_PATH="/etc/openwrt_release"
#NEW_DESCRIPTION="OpenWrt V25.1.23"
#sed -i "s/DISTRIB_DESCRIPTION='[^']*'/DISTRIB_DESCRIPTION='$NEW_DESCRIPTION'/" "$FILE_PATH"

sed -ri '/check_signature/s@^[^#]@#&@' /etc/opkg.conf
sed -i 's#downloads.openwrt.org#mirrors.pku.edu.cn/openwrt#g' /etc/opkg/distfeeds.conf
sed -i '$a src/gz kmods https://mirrors.pku.edu.cn/openwrt/releases/24.10.0/targets/x86/64/kmods/6.6.73-1-a21259e4f338051d27a6443a3a7f7f1f' /etc/opkg/customfeeds.conf
sed -i '$a src/gz kiddin9 https://dl.openwrt.ai/packages-24.10/x86_64/kiddin9' /etc/opkg/customfeeds.conf
wifi up

/etc/init.d/network restart
exit 0
