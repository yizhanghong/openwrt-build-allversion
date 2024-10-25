sed -i 's/192.168.1.1/192.168.8.1/g' package/base-files/files/bin/config_generate
sed -i 's/ImmortalWrt/CR6606/g' package/base-files/files/bin/config_generate

rm -rf feeds/luci/applications/luci-app-filetransfer
rm -rf package/emortal/luci-app-mwan3helper-chinaroute

rm -rf feeds/luci/themes/luci-theme-argonv3
rm -rf feeds/luci/themes/luci-theme-argonv2
rm -rf feeds/luci/themes/luci-theme-argon
git clone -b 18.06 --depth=1 https://github.com/jerrykuku/luci-theme-argon.git feeds/luci/themes/luci-theme-argon
git clone --depth=1 https://github.com/sirpdboy/sirpdboy-package.git  package/sirpdboy
mv package/sirpdboy/luci-app-netwizard package/luci-app-netwizard
rm -rf package/sirpdboy
