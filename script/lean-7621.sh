sed -i 's/192.168.1.1/192.168.23.1/g' package/base-files/files/bin/config_generate
sed -i "s/192\.168\.[0-9]*\.[0-9]*/192.168.23.1/g" $(find ./feeds/luci/modules/luci-mod-system/ -type f -name "flash.js")
sed -i 's/LEDE/R3Pro/g' package/base-files/files/bin/config_generate
sed -i 's/LEDE/R3Pro/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i "s/luci-theme-bootstrap/luci-theme-design/g" $(find ./feeds/luci/collections/ -type f -name "Makefile")

rm -rf feeds/luci/applications/luci-app-argon-config
rm -rf feeds/luci/themes/luci-theme-argon
git clone -b 18.06 --depth=1 https://github.com/jerrykuku/luci-app-argon-config.git feeds/luci/applications/luci-app-argon-config
git clone -b 18.06 --depth=1 https://github.com/jerrykuku/luci-theme-argon.git feeds/luci/themes/luci-theme-argon

rm -rf feeds/packages/net/{alist,adguardhome,mosdns,xray*,v2ray*,v2ray*,sing*,smartdns}
rm -rf feeds/packages/utils/v2dat
git clone --depth=1 https://github.com/fw876/helloworld.git package/helloworld
git clone --depth=1 https://github.com/vernesong/OpenClash.git package/openclash
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall-packages.git package/passwall-packages
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall.git package/passwall

git clone --depth=1 https://github.com/kenzok8/small-package.git package/kz8-small
mv package/kz8-small/adguardhome package/adguardhome
mv package/kz8-small/alist package/alist
mv package/kz8-small/mosdns package/mosdns
mv package/kz8-small/smartdns package/smartdns
mv package/kz8-small/luci-app-alist package/luci-app-alist
mv package/kz8-small/luci-app-mentohust package/luci-app-mentohust
rm -rf package/kz8-small

# iStore
git clone --depth=1 -b main https://github.com/linkease/istore.git package/istore
git clone --depth=1 -b master https://github.com/linkease/nas-packages.git package/nas-packages
git clone --depth=1 -b main https://github.com/linkease/nas-packages-luci.git package/nas-luci
mv package/nas-packages/network/services/* package/nas-packages/
rm -rf package/nas-packages/network
