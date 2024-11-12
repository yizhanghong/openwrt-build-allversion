# 修改默认IP，主机名
sed -i 's/192.168.1.1/192.168.23.1/g' package/base-files/files/bin/config_generate
sed -i "s/192\.168\.[0-9]*\.[0-9]*/192.168.23.1/g" $(find ./feeds/luci/modules/luci-mod-system/ -type f -name "flash.js")
sed -i 's/LibWrt/OpenWrt/g' package/base-files/files/bin/config_generate
sed -i 's/%d/openwrt/g' package/base-files/files/usr/lib/os-release
sed -i 's/%D/OpenWrt/g' package/base-files/files/usr/lib/os-release
sed -i 's/%M/OpenWrt/g' package/base-files/files/usr/lib/os-release
# sed -i 's/encryption=none/encryption=psk2/g' package/network/config/wifi-scripts/files/lib/wifi/mac80211.uc
# sed -i '214i\\t\t\tset wireless.default_${name}.key=123456qwerty' package/network/config/wifi-scripts/files/lib/wifi/mac80211.uc



# iStore
# git clone --depth=1 -b main https://github.com/linkease/istore.git package/istore
# git clone --depth=1 -b master https://github.com/linkease/nas-packages.git package/nas-packages
# git clone --depth=1 -b main https://github.com/linkease/nas-packages-luci.git package/nas-luci
# mv package/nas-packages/network/services/* package/nas-packages/
# rm -rf package/nas-packages/network

git clone --depth=1 https://github.com/sirpdboy/luci-app-eqosplus.git package/eqosplus

# git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall-packages.git package/passwall-packages
# git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall2.git package/passwall2
# git clone https://github.com/destan19/OpenAppFilter.git package/mypackage/OpenAppFilter
# mv package/small/chinadns-ng package/mypackage/
# rm -rf package/small
# 添加cpufreq和diskman
# git clone --depth=1 https://github.com/immortalwrt/luci.git package/immortal-luci
# mv package/immortal-luci/applications/luci-app-cpufreq package/mypackage/
# mv package/immortal-luci/applications/luci-app-diskman package/mypackage/
# mv package/immortal-luci/luci.mk package/mypackage/
# rm -rf package/immortal-luci
# sed -i '10d' package/mypackage/luci-app-cpufreq/Makefile
# sed -i '51d' package/mypackage/luci-app-diskman/Makefile
# sed -i '10i include ../luci.mk' package/mypackage/luci-app-cpufreq/Makefile
# sed -i '51i include ../luci.mk' package/mypackage/luci-app-diskman/Makefile
