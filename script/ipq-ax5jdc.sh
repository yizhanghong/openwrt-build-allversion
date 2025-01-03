# 修改默认IP，主机名
sed -i 's/192.168.1.1/192.168.13.1/g' package/base-files/files/bin/config_generate
sed -i "s/192\.168\.[0-9]*\.[0-9]*/192.168.13.1/g" $(find ./feeds/luci/modules/luci-mod-system/ -type f -name "flash.js")
sed -i 's/LibWrt/OpenWrt/g' package/base-files/files/bin/config_generate
sed -i 's/LiBwrt/OpenWrt/g' include/version.mk

mv $GITHUB_WORKSPACE/patch/ipq-breeze/home/mac80211.uc package/network/config/wifi-scripts/files/lib/wifi/mac80211.uc
mv $GITHUB_WORKSPACE/patch/ipq-breeze/home/wuhe.sh $OPENWRT_PATH/package/base-files/files/etc/uci-defaults/home.wuhe.sh
