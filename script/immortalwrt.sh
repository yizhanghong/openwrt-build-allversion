sed -i 's/192.168.1.1/192.168.23.1/g' package/base-files/files/bin/config_generate
sed -i 's/ImmortalWrt/K2P/g' package/base-files/files/bin/config_generate
#sed -i 's/上网时间控制/上网控制/g' feeds/luci/applications/luci-app-accesscontrol/po/zh_Hans/mia.po
# sed -i 's/ImmortalWrt/AX6S/g' package/network/config/wifi-scripts/files/lib/wifi/mac80211.uc

sed -i 's/mirrors.vsean.net/mirror.nju.edu.cn/g' package/emortal/default-settings/files/99-default-settings-chinese
sed -i 's/openwrt/immortalwrt/g' package/emortal/default-settings/files/99-default-settings-chinese

#git clone --depth=1 https://github.com/Siha06/my-openwrt-packages.git package/wizard
# git clone --depth=1 -b main https://github.com/linkease/istore.git package/istore
#git clone --depth=1 https://github.com/Siriling/5G-Modem-Support.git package/5g-modem
#sed -i '24d' package/5g-modem/luci-app-modem/Makefile
