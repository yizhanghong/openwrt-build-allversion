sed -i 's/192.168.1.1/192.168.23.1/g' package/base-files/files/bin/config_generate
sed -i "s/192\.168\.[0-9]*\.[0-9]*/192.168.23.1/g" $(find ./feeds/luci/modules/luci-mod-system/ -type f -name "flash.js")
sed -i 's/ImmortalWrt/X86/g' package/base-files/files/bin/config_generate

sed -i 's/mirrors.vsean.net/mirror.nju.edu.cn/g' package/emortal/default-settings/files/99-default-settings-chinese
sed -i 's/openwrt/immortalwrt/g' package/emortal/default-settings/files/99-default-settings-chinese

#git clone --depth=1 https://github.com/Siriling/5G-Modem-Support.git package/5g-modem
rm -rf feeds/packages/lang/golang
git clone --depth=1 https://github.com/sbwml/packages_lang_golang -b 23.x feeds/packages/lang/golang
#git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall2.git package/passwall2
#git clone --depth=1 https://github.com/gdy666/luci-app-lucky.git package/lucky
git clone --depth=1 https://github.com/kiddin9/openwrt-clouddrive2.git package/openwrt-clouddrive2
git clone --depth=1 https://github.com/morytyann/OpenWrt-mihomo.git package/mihomo
git clone --depth=1 https://github.com/kenzok8/small-package.git package/small-package
mv package/small-package/luci-app-aliyundrive-webdav package/luci-app-aliyundrive-webdav
mv package/small-package/aliyundrive-webdav package/aliyundrive-webdav
rm -rf package/small-package

# iStore
#git clone --depth=1 -b main https://github.com/linkease/istore.git package/istore
#git clone --depth=1 -b master https://github.com/linkease/nas-packages.git package/nas-packages
#git clone --depth=1 -b main https://github.com/linkease/nas-packages-luci.git package/nas-luci
#mv package/nas-packages/network/services/* package/nas-packages/
#rm -rf package/nas-packages/network
