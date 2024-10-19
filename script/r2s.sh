sed -i 's/192.168.1.1/192.168.23.1/g' package/base-files/files/bin/config_generate
# sed -i 's/ImmortalWrt/OpenWrt/g' package/base-files/files/bin/config_generate

# sed -i 's/mirrors.vsean.net/mirror.nju.edu.cn/g' package/emortal/default-settings/files/99-default-settings-chinese
# sed -i 's/openwrt/immortalwrt/g' package/emortal/default-settings/files/99-default-settings-chinese
sed -i 's/SNAPSHOT/V24.10.19/g' package/default-settings/files/zzz-default-settings

git clone -b 18.06 --depth=1 https://github.com/jerrykuku/luci-app-argon-config.git package/luci-app-argon-config
git clone -b 18.06 --depth=1 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon

git clone --depth=1 https://github.com/vernesong/OpenClash.git  package/openclash
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall-packages.git package/passwall-packages
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall.git package/luci-app-passwall

# rm -rf rm -rf feeds/luci/applications/luci-app-dockerman

# git clone --depth=1 https://github.com/kenzok8/openwrt-packages.git package/kz8
# mv package/kz8/luci-app-ikoolproxy package/luci-app-ikoolproxy
# rm -rf package/kz8
