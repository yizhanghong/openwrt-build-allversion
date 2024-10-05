sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate
sed -i 's/ImmortalWrt/Wrt1900ACS/g' package/base-files/files/bin/config_generate

git clone -b openwrt-21.02 --single-branch --depth=1 https://github.com/immortalwrt/luci  package/imm-luci21.02
mv package/imm-luci21.02/applications/luci-app-ddns-go feeds/luci/applications/luci-app-ddns-go
rm -rf package/imm-luci21.02

git clone https://github.com/sirpdboy/luci-app-ddns-go.git package/ddns-go

#安装最新openclash
rm -rf feeds/luci/applications/luci-app-openclash
git clone --depth=1 https://github.com/vernesong/OpenClash.git  package/openclash
mv package/openclash/luci-app-openclash feeds/luci/applications/
rm -rf package/openclash
