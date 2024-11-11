sed -i 's/192.168.1.1/192.168.23.1/g' package/base-files/files/bin/config_generate
sed -i 's/ImmortalWrt/N100/g' package/base-files/files/bin/config_generate

sed -i 's/mirrors.vsean.net/mirror.nju.edu.cn/g' package/emortal/default-settings/files/99-default-settings-chinese
sed -i 's/openwrt/immortalwrt/g' package/emortal/default-settings/files/99-default-settings-chinese

#git clone --depth=1 https://github.com/Siriling/5G-Modem-Support.git package/5g-modem
rm -rf feeds/packages/lang/golang
git clone --depth=1 https://github.com/sbwml/packages_lang_golang -b 23.x feeds/packages/lang/golang
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall2.git package/passwall2


# iStore
#git clone --depth=1 -b main https://github.com/linkease/istore.git package/istore
#git clone --depth=1 -b master https://github.com/linkease/nas-packages.git package/nas-packages
#git clone --depth=1 -b main https://github.com/linkease/nas-packages-luci.git package/nas-luci
#mv package/nas-packages/network/services/* package/nas-packages/
#rm -rf package/nas-packages/network
