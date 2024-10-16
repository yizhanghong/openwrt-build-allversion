# sed -i 's/192.168.1.1/192.168.6.1/g' package/base-files/files/bin/config_generate
# sed -i 's/ImmortalWrt/AX6S/g' package/base-files/files/bin/config_generate
# sed -i 's/ImmortalWrt/AX6S/g' package/network/config/wifi-scripts/files/lib/wifi/mac80211.uc

git clone --depth=1 https://github.com/vernesong/OpenClash.git  package/openclash
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall-packages.git package/passwall-packages
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall.git package/luci-app-passwall
git clone --depth=1 https://github.com/kiddin9/openwrt-clouddrive2.git package/luci-app-clouddrive2
