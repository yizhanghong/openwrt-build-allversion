sed -i 's/192.168.1.1/192.168.23.1/g' package/base-files/files/bin/config_generate
# sed -i 's/ImmortalWrt/OpenWrt/g' package/base-files/files/bin/config_generate


# 添加额外插件

git clone --depth=1 https://github.com/esirplayground/luci-app-poweroff package/mypackage/luci-app-poweroff
git clone --depth=1 https://github.com/ophub/luci-app-amlogic package/mypackage/luci-app-amlogic
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall2.git package/mypackage/luci-app-passwall2
