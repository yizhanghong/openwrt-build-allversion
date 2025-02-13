#!/bin/sh

sed -i '/nss/d' /etc/apk/repositories.d/distfeeds.list
sed -i '/sqm/d' /etc/apk/repositories.d/distfeeds.list
#sed -i '$a src/gz openwrt_others https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/qualcommax/ipq60xx/packages' /etc/apk/repositories.d/customfeeds.list
sed -i '$a src/gz openwrt_kmods https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/qualcommax/ipq60xx/kmods/6.6.71-1-ff75615298a003c0b4ac7104bd8904ff' /etc/apk/repositories.d/customfeeds.list

# 设置所有网口可访问网页终端
uci delete ttyd.@ttyd[0].interface

# 设置所有网口可连接 SSH
uci set dropbear.@dropbear[0].Interface=''
uci commit

# wifi设置

exit 0
