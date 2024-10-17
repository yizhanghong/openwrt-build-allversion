# sed -i 's/192.168.1.1/192.168.6.1/g' package/base-files/files/bin/config_generate
# sed -i 's/ImmortalWrt/AX6S/g' package/base-files/files/bin/config_generate
# sed -i 's/ImmortalWrt/AX6S/g' package/network/config/wifi-scripts/files/lib/wifi/mac80211.uc

rm -rf feeds/packages/net/{alist,adguardhome,mosdns,xray*,v2ray*,v2ray*,sing*,smartdns}
rm -rf feeds/packages/utils/v2dat
rm -rf feeds/packages/lang/golang
git clone https://github.com/kenzok8/golang feeds/packages/lang/golang

git clone --depth=1 https://github.com/vernesong/OpenClash.git  package/openclash
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall-packages.git package/passwall-packages
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall.git package/luci-app-passwall
git clone --depth=1 https://github.com/kiddin9/openwrt-clouddrive2.git package/luci-app-clouddrive2
