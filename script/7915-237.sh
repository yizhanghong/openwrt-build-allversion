sed -i 's/192.168.1.1/192.168.23.1/g' package/base-files/files/bin/config_generate
sed -i "s/192\.168\.[0-9]*\.[0-9]*/192.168.23.1/g" $(find ./feeds/luci/modules/luci-mod-system/ -type f -name "flash.js")
sed -i 's/ImmortalWrt/OpenWrt/g' package/base-files/files/bin/config_generate
#mv $GITHUB_WORKSPACE/patch/7621-237imm/defset-7915 package/emortal/default-settings/files/99-default-settings
# sed -i 's/bootstrap/design/g' feeds/luci/modules/luci-base/root/etc/config/luci
# sed -i "s/luci-theme-design/luci-theme-design/g" $(find ./feeds/luci/collections/ -type f -name "Makefile")
#rm -rf feeds/luci/applications/luci-app-filetransfer
rm -rf package/emortal/luci-app-mwan3helper-chinaroute
rm -rf feeds/luci/themes/luci-theme-argonv3
rm -rf feeds/luci/themes/luci-theme-argonv2
rm -rf feeds/luci/themes/luci-theme-argon
rm -rf feeds/luci/applications/luci-app-argon-config
git clone -b 18.06 --depth 1 https://github.com/jerrykuku/luci-theme-argon.git feeds/luci/themes/luci-theme-argon

rm -rf feeds/packages/lang/golang
git clone --depth 1 https://github.com/kenzok8/golang feeds/packages/lang/golang
#删除自带的老旧依赖，ssr-plus，passwall
rm -rf feeds/packages/net/{brook,chinadns-ng,dns2socks,dns2tcp,hysteria,ipt2socks,microsocks,naiveproxy}
rm -rf feeds/packages/net/{pdnsd-alt,simple-obfs,sing-box,tcping,trojan*,tuic-client,v2ray*,xray*,mosdns,redsocks2}
rm -rf feeds/packages/net/{ssocks,shadow-tls}
rm -rf feeds/packages/devel/gn
rm -rf feeds/packages/utils/v2dat
rm -rf feeds/luci/applications/{luci-app-passwall,luci-app-ssr-plus,luci-app-mosdns}

git clone --depth 1 https://github.com/fw876/helloworld.git package/helloworld
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall.git package/passwall
git clone https://github.com/xiaorouji/openwrt-passwall-packages.git package/passwall-packages

git clone --depth 1 https://github.com/sirpdboy/netspeedtest.git package/netspeedtest
