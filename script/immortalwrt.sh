sed -i 's/192.168.1.1/192.168.23.1/g' package/base-files/files/bin/config_generate
sed -i "s/192\.168\.[0-9]*\.[0-9]*/192.168.23.1/g" $(find ./feeds/luci/modules/luci-mod-system/ -type f -name "flash.js")
sed -i 's/ImmortalWrt/Router/g' package/base-files/files/bin/config_generate
sed -i 's/ImmortalWrt/WiFi/g' package/network/config/wifi-scripts/files/lib/wifi/mac80211.uc
sed -i 's#mirrors.vsean.net/openwrt#mirrors.pku.edu.cn/immortalwrt#g' package/emortal/default-settings/files/99-default-settings-chinese

git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall2.git package/passwall2
#git clone --depth 1 https://github.com/Siriling/5G-Modem-Support.git package/5g-modem
git clone --depth 1 https://github.com/asvow/luci-app-tailscale package/luci-app-tailscale

git clone --depth=1 https://github.com/kenzok8/small-package.git package/kz8-small
mv package/kz8-small/luci-app-adguardhome package/luci-app-adguardhome
mv package/kz8-small/luci-app-ikoolproxy package/luci-app-ikoolproxy
mv package/kz8-small/luci-app-macvlan package/luci-app-macvlan
mv package/kz8-small/luci-app-partexp package/luci-app-partexp
mv package/kz8-small/luci-app-wrtbwmon package/luci-app-wrtbwmon
mv package/kz8-small/wrtbwmon package/wrtbwmon
rm -rf package/kz8-small

rm -rf feeds/luci/applications/luci-app-msd_lite
rm -rf feeds/packages/net/msd_lite
git clone --depth 1 -b openwrt-23.05 https://github.com/immortalwrt/luci package/imm23luci
mv package/imm23luci/applications/luci-app-msd_lite feeds/luci/applications/luci-app-msd_lite
rm -rf package/imm23luci
git clone --depth 1 -b openwrt-23.05 https://github.com/immortalwrt/packages package/imm23packages
mv package/imm23packages/net/msd_lite feeds/packages/net/msd_lite
rm -rf package/imm23packages
