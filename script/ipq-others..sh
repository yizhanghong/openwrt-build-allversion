# 修改默认IP，主机名
sed -i 's/192.168.1.1/192.168.23.1/g' package/base-files/files/bin/config_generate
sed -i "s/192\.168\.[0-9]*\.[0-9]*/192.168.23.1/g" $(find ./feeds/luci/modules/luci-mod-system/ -type f -name "flash.js")
sed -i 's/LibWrt/OpenWrt/g' package/base-files/files/bin/config_generate
sed -i 's/LiBwrt/OpenWrt/g' include/version.mk
# sed -i 's/encryption=none/encryption=psk2/g' package/network/config/wifi-scripts/files/lib/wifi/mac80211.uc
# sed -i '214i\\t\t\tset wireless.default_${name}.key=123456qwerty' package/network/config/wifi-scripts/files/lib/wifi/mac80211.uc

#sed -i 's/24.10/23.05/g' package/emortal/default-settings/files/99-distfeeds.conf
#mv $GITHUB_WORKSPACE/patch/ipq-breeze/os-release package/base-files/files/usr/lib/os-release
#mv $GITHUB_WORKSPACE/patch/ipq-breeze/10_system.js feeds/luci/modules/luci-mod-status/htdocs/luci-static/resources/view/status/include/10_system.js

mv $GITHUB_WORKSPACE/patch/banner package/base-files/files/etc/banner
mv $GITHUB_WORKSPACE/patch/ipq-breeze/99-default-settings package/emortal/default-settings/files/99-default-settings
mv $GITHUB_WORKSPACE/patch/ipq-breeze/mac80211.uc package/network/config/wifi-scripts/files/lib/wifi/mac80211.uc
mv $GITHUB_WORKSPACE/patch/ipq-breeze/landlord/reset package/base-files/files/etc/rc.button/reset
