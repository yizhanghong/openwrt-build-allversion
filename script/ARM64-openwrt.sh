mv $GITHUB_WORKSPACE/patch/openwrt-24.10/199-x86.sh package/base-files/files/etc/uci-defaults/199-mydef.sh

git clone --depth 1 https://github.com/Siriling/5G-Modem-Support.git package/5g-modem
sed -i 's/移动通信模组/通信模组/g' package/5g-modem/luci-app-modem/po/zh-cn/modem.po
sed -i 's/移动通信模组/通信模组/g' package/5g-modem/luci-app-modem/po/zh_Hans/modem.po

# iStore
git clone --depth 1 -b main https://github.com/linkease/istore.git package/istore
git clone --depth 1 -b master https://github.com/linkease/nas-packages.git package/nas-packages
git clone --depth 1 -b main https://github.com/linkease/nas-packages-luci.git package/nas-luci
mv package/nas-packages/network/services/* package/nas-packages/
rm -rf package/nas-packages/network

git clone --depth 1 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
git clone --depth 1 https://github.com/sirpdboy/luci-app-advancedplus package/luci-app-advancedplus
git clone --depth 1 https://github.com/Siha06/my-openwrt-packages.git package/my-openwrt-packages

git clone --depth 1 -b openwrt-24.10 https://github.com/immortalwrt/luci.git package/mypkg/imm24-luci
mv package/mypkg/imm24-luci/applications/luci-app-autoreboot package/mypkg/luci-app-autoreboot
mv package/mypkg/imm24-luci/applications/luci-app-cpufreq package/mypkg/luci-app-cpufreq
mv package/mypkg/imm24-luci/applications/luci-app-diskman package/mypkg/luci-app-diskman
mv package/mypkg/imm24-luci/applications/luci-app-homeproxy package/mypkg/luci-app-homeproxy
mv package/mypkg/imm24-luci/applications/luci-app-ramfree package/mypkg/luci-app-ramfree
rm -rf package/mypkg/imm24-luci
sed -i 's#../../luci.mk#$(TOPDIR)/feeds/luci/luci.mk#g' $(find ./package/mypkg/ -type f -name "Makefile")
