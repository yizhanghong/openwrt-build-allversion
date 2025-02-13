#!/bin/sh

sed -i '/nss/d' /etc/apk/repositories.d/distfeeds.list
sed -i '/sqm/d' /etc/apk/repositories.d/distfeeds.list
sed -i 's#downloads.immortalwrt.org#mirrors.pku.edu.cn/immortalwrt#g' etc/apk/repositories.d/distfeeds.list
#sed -i '$a src/gz openwrt_others https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/qualcommax/ipq60xx/packages' /etc/apk/repositories.d/customfeeds.list
sed -i '$a src/gz openwrt_kmods https://mirrors.pku.edu.cn/immortalwrt/snapshots/targets/qualcommax/ipq60xx/kmods/6.6.77-1-9ff595d0bc717803d56fb3b718a00292' /etc/apk/repositories.d/customfeeds.list

# 设置所有网口可访问网页终端
uci delete ttyd.@ttyd[0].interface

# 设置所有网口可连接 SSH
uci set dropbear.@dropbear[0].Interface=''
uci commit

# wifi设置

exit 0
