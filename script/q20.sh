sed -i 's/192.168.6.1/192.168.23.1/g' package/base-files/files/bin/config_generate
sed -i 's/ImmortalWrt/RedmiAX6s/g' package/base-files/files/bin/config_generate

# git clone --depth=1 https://github.com/sirpdboy/luci-app-eqosplus package/luci-app-eqosplus
rm -rf feeds/luci/themes/luci-theme-argon
rm -rf feeds/luci/applications/luci-app-argon-config
git clone -b 18.06 --depth=1 https://github.com/jerrykuku/luci-theme-argon.git feeds/luci/themes/luci-theme-argon
git clone -b 18.06 --depth=1 https://github.com/jerrykuku/luci-app-argon-config feeds/luci/applications/luci-app-argon-config

git clone -b openwrt-21.02 --single-branch --depth=1 https://github.com/immortalwrt/luci.git package/imm21pkg
mv package/imm21pkg/protocols/luci-proto-sstp package/luci-proto-sstp
rm -rf package/imm21pkg
# sed -i '13d' package/luci-proto-sstp/Makefile
# sed -i '13i\include $(TOPDIR)/feeds/luci/luci.mk' package/luci-proto-sstp/Makefile
rm -rf package/luci-proto-sstp/Makefile
