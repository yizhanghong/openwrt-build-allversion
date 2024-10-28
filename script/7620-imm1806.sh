sed -i 's/192.168.1.1/192.168.6.1/g' package/base-files/files/bin/config_generate
sed -i 's/ImmortalWrt/Aimydee/g' package/base-files/files/bin/config_generate

#
rm -rf feeds/luci/modules/luci-base/po/zh-cn
rm -rf feeds/luci/applications/luci-app-passwall/po/zh-cn
rm -rf feeds/luci/applications/luci-app-timecontrol/po/zh-cn
rm -rf feeds/luci/applications/luci-app-firewall/po/zh-cn
rm -rf feeds/luci/applications/luci-app-upnp/po/zh-cn


# sed -i 's/bootstrap/design/g' feeds/luci/modules/luci-base/root/etc/config/luci
# sed -i "s/luci-theme-design/luci-theme-design/g" $(find ./feeds/luci/collections/ -type f -name "Makefile")
rm -rf feeds/luci/applications/luci-app-filetransfer

rm -rf feeds/luci/themes/luci-theme-argonv3
rm -rf feeds/luci/themes/luci-theme-argonv2
rm -rf feeds/luci/themes/luci-theme-argon
git clone -b 18.06 --depth=1 https://github.com/jerrykuku/luci-theme-argon.git feeds/luci/themes/luci-theme-argon
git clone --depth=1 https://github.com/kenzok8/openwrt-packages.git  package/openwrt-packages
mv package/openwrt-packages/luci-theme-design package/luci-theme-design
rm -rf package/openwrt-packages

# rm -rf feeds/luci/themes/luci-theme-bootstrap
# git clone --depth=1 https://github.com/sirpdboy/luci-app-eqosplus package/luci-app-eqosplus
# rm -rf feeds/luci/themes/luci-theme-argon
# rm -rf feeds/luci/applications/luci-app-argon-config
# git clone -b 18.06 --depth=1 https://github.com/jerrykuku/luci-theme-argon.git feeds/luci/themes/luci-theme-argon
# git clone -b 18.06 --depth=1 https://github.com/jerrykuku/luci-app-argon-config feeds/luci/applications/luci-app-argon-config

# git clone -b openwrt-21.02 --single-branch --depth=1 https://github.com/immortalwrt/luci.git package/imm21pkg
# mv package/imm21pkg/protocols/luci-proto-sstp package/luci-proto-sstp
# rm -rf package/imm21pkg
# sed -i '13d' package/luci-proto-sstp/Makefile
# sed -i '13i\include $(TOPDIR)/feeds/luci/luci.mk' package/luci-proto-sstp/Makefile
# rm -rf package/luci-proto-sstp/Makefile
