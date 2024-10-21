sed -i 's/192.168.1.1/192.168.23.1/g' package/base-files/files/bin/config_generate
sed -i 's/ImmortalWrt/MiR3G/g' package/base-files/files/bin/config_generate

sed -i 's/mirrors.vsean.net/mirror.nju.edu.cn/g' package/emortal/default-settings/files/99-default-settings-chinese
sed -i 's/openwrt/immortalwrt/g' package/emortal/default-settings/files/99-default-settings-chinese

# git clone --depth=1 -b main https://github.com/linkease/istore.git package/istore
git clone --depth=1 https://github.com/Siriling/5G-Modem-Support.git package/5g-modem
