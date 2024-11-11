# 修改默认IP，主机名
sed -i 's/192.168.1.1/192.168.13.1/g' package/base-files/files/bin/config_generate
sed -i "s/192\.168\.[0-9]*\.[0-9]*/192.168.23.1/g" $(find ./feeds/luci/modules/luci-mod-system/ -type f -name "flash.js")
sed -i 's/LibWrt/OpenWrt/g' package/base-files/files/bin/config_generate
#默认WiFi设置
sed -i 's/OpenWrt/AX1800/g' package/network/config/wifi-scripts/files/lib/wifi/mac80211.uc
sed -i 's/libwrt/OpenWrt/g' package/base-files/files/usr/lib/os-release
sed -i 's/LiBwrt/OpenWrt/g' package/base-files/files/usr/lib/os-release

# sed -i 's/encryption=none/encryption=psk2/g' package/network/config/wifi-scripts/files/lib/wifi/mac80211.uc
# sed -i '214i\\t\t\tset wireless.default_${name}.key=123456qwerty' package/network/config/wifi-scripts/files/lib/wifi/mac80211.uc

# iStore
# git clone --depth=1 -b main https://github.com/linkease/istore.git package/istore
# git clone --depth=1 -b master https://github.com/linkease/nas-packages.git package/nas-packages
# git clone --depth=1 -b main https://github.com/linkease/nas-packages-luci.git package/nas-luci
# mv package/nas-packages/network/services/* package/nas-packages/
# rm -rf package/nas-packages/network

#下载5g模块
git clone --depth=1 https://github.com/Siriling/5G-Modem-Support.git package/5g-modem
sed -i '24d' package/5g-modem/luci-app-modem/Makefile
sed -i 's/移动通信模组/通信模组/g' package/5g-modem/luci-app-modem/po/zh-cn/modem.po
sed -i 's/移动通信模组/通信模组/g' package/5g-modem/luci-app-modem/po/zh_Hans/modem.po
sed -i 's/\"network\"/\"modem\"/g' package/5g-modem/luci-app-modem/luasrc/controller/modem.lua
rm -rf feeds/packages/net/quectel-cm
rm -rf feeds/packages/kernel/fibocom-qmi-wwan
rm -rf feeds/packages/kernel/quectel-qmi-wwan
rm -rf feeds/luci/protocols/luci-proto-quectel
rm -rf feeds/nss_packages/wwan

rm -rf feeds/packages/lang/ruby
git clone --depth=1 -b openwrt-23.05 --single-branch https://github.com/immortalwrt/packages.git package/immortal-pkg
mv package/immortal-pkg/lang/ruby feeds/packages/lang/ruby
rm -rf package/immortal-pkg

#安装最新openclash
# rm -rf feeds/luci/applications/luci-app-openclash
# git clone --depth=1 https://github.com/vernesong/OpenClash.git  package/openclash
# mv package/openclash/luci-app-openclash feeds/luci/applications/
# rm -rf package/openclash

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
