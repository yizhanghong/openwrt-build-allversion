# 修改默认IP，主机名，WiFi名称
sed -i 's/192.168.1.1/192.168.13.1/g' package/base-files/files/bin/config_generate
sed -i 's/r1.1/v24.4.20/g' package/emortal/default-settings/files/99-default-settings
sed -i 's/OpenWRT/OpenWrt/g' package/emortal/default-settings/files/99-default-settings
# sed -i 's/ImmortalWrt/RAX3000M/g' package/base-files/files/bin/config_generate
# sed -i 's/ImmortalWrt/CMCCRAX/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
# sed -i '$d' feeds.conf.default
# 添加homeproxy
git clone --depth=1 https://github.com/immortalwrt/homeproxy.git package/mypackage/homeproxy
git clone --depth=1 https://github.com/kenzok8/small-package.git package/small
mv package/small/chinadns-ng package/mypackage/
rm -rf package/small
# 添加cpufreq和diskman
git clone --depth=1 https://github.com/immortalwrt/luci.git package/immortal-luci
mv package/immortal-luci/applications/luci-app-cpufreq package/mypackage/
mv package/immortal-luci/applications/luci-app-diskman package/mypackage/
mv package/immortal-luci/luci.mk package/mypackage/
rm -rf package/immortal-luci
sed -i '10d' package/mypackage/luci-app-cpufreq/Makefile
sed -i '51d' package/mypackage/luci-app-diskman/Makefile
sed -i '10i include ../luci.mk' package/mypackage/luci-app-cpufreq/Makefile
sed -i '51i include ../luci.mk' package/mypackage/luci-app-diskman/Makefile
