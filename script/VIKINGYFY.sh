# 修改默认IP，主机名
sed -i 's/192.168.1.1/192.168.23.1/g' package/base-files/files/bin/config_generate
sed -i 's/ImmortalWrt/OpenWrt/g' package/base-files/files/bin/config_generate
#默认WiFi设置
sed -i 's/ImmortalWrt/IPQ6000/g' package/network/config/wifi-scripts/files/lib/wifi/mac80211.uc
# sed -i 's/encryption=none/encryption=psk2/g' package/network/config/wifi-scripts/files/lib/wifi/mac80211.uc
# sed -i '214i\\t\t\tset wireless.default_${name}.key=123456qwerty' package/network/config/wifi-scripts/files/lib/wifi/mac80211.uc


#下载5g模块
git clone --depth=1 https://github.com/Siriling/5G-Modem-Support.git package/5g-modem
rm -rf feeds/packages/net/quectel-cm
rm -rf feeds/packages/kernel/fibocom-qmi-wwan
rm -rf feeds/packages/kernel/quectel-qmi-wwan
rm -rf feeds/luci/protocols/luci-proto-quectel
rm -rf feeds/nss_packages/wwan

rm -rf feeds/packages/lang/ruby
git clone --depth=1 -b openwrt-23.05 --single-branch https://github.com/immortalwrt/packages.git package/immortal-pkg
mv package/immortal-pkg/lang/ruby feeds/packages/lang/ruby
rm -rf package/immortal-pkg

# iStore
#git clone --depth=1 -b main https://github.com/linkease/istore.git package/istore
#git clone --depth=1 -b master https://github.com/linkease/nas-packages.git package/nas-packages
#git clone --depth=1 -b main https://github.com/linkease/nas-packages-luci.git package/nas-luci
#mv package/nas-packages/network/services/* package/nas-packages/
#rm -rf package/nas-packages/network

#git clone --depth=1 https://github.com/kenzok8/small-package.git package/kz8-small
#mv package/kz8-small/luci-app-jellyfin package/luci-app-jellyfin
#rm -rf package/kz8-small
