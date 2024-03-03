sed -i 's/192.168.1.1/192.168.23.1/g' package/base-files/files/bin/config_generate
sed -i 's/ImmortalWrt/L1Pro/g' package/base-files/files/bin/config_generate

git clone --depth=1 https://github.com/ophub/luci-app-amlogic.git package/luci-app-amlogic
# git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall2.git package/luci-app-passwall2



