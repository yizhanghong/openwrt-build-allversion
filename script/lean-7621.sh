sed -i 's/192.168.1.1/192.168.23.1/g' package/base-files/files/bin/config_generate
sed -i "s/192\.168\.[0-9]*\.[0-9]*/192.168.23.1/g" $(find ./feeds/luci/modules/luci-mod-system/ -type f -name "flash.js")
sed -i 's/LEDE/R3Pro/g' package/base-files/files/bin/config_generate
sed -i 's/LEDE/R3Pro/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i "s/luci-theme-bootstrap/luci-theme-design/g" $(find ./feeds/luci/collections/ -type f -name "Makefile")

git clone --depth=1 https://github.com/fw876/helloworld.git package/helloworld
git clone --depth=1 https://github.com/vernesong/OpenClash.git package/openclash
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall-packages.git package/passwall-packages
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall.git package/passwall
git clone --depth=1 https://github.com/kenzok8/small-package.git package/kz8-small
mv package/kz8-small/luci-app-alist package/luci-app-alist
rm -rf package/kz8-small
