git checkout 75aeb7ed627ba5ea6f10f365b232bed21e40b502
git checkout 75aeb7ed627ba5ea6f10f365b232bed21e40b502

sed -i 's/192.168.1.1/192.168.23.1/g' package/base-files/files/bin/config_generate
sed -i 's/ImmortalWrt/L1Pro/g' package/base-files/files/bin/config_generate


# 添加额外插件

git clone --depth=1 https://github.com/esirplayground/luci-app-poweroff package/mypackage/luci-app-poweroff
git clone --depth=1 https://github.com/ophub/luci-app-amlogic package/mypackage/luci-app-amlogic
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall2.git package/mypackage/luci-app-passwall2
