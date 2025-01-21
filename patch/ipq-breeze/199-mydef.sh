#!/bin/sh

date_version=$(date +"%y.%m.%d")
sed -i '/DISTRIB_REVISION/d' /etc/openwrt_release
echo "DISTRIB_REVISION='V${date_version}'" >> /etc/openwrt_release
sed -i '/DISTRIB_DESCRIPTION/d' /etc/openwrt_release
echo "DISTRIB_DESCRIPTION='OpenWrt-V${date_version} '" >> /etc/openwrt_release

sed -i '/ula_prefix/d' /etc/config/network
sed -i 's/60/64/g' /etc/config/network
sed -i '$a src/gz openwrt_others https://mirror.nju.edu.cn/immortalwrt/releases/24.10-SNAPSHOT/targets/qualcommax/ipq807x/packages' /etc/opkg/customfeeds.conf
sed -i '$a src/gz openwrt_kmods https://mirror.nju.edu.cn/immortalwrt/releases/24.10-SNAPSHOT/targets/qualcommax/ipq807x/kmods/6.6.65-1-c9824125bf4a8028af70bed3c9a6ae77' /etc/opkg/customfeeds.conf

# 设置所有网口可访问网页终端
uci delete ttyd.@ttyd[0].interface

# 设置所有网口可连接 SSH
uci set dropbear.@dropbear[0].Interface=''
uci commit

# wifi设置

exit 0
