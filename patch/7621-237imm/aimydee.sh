sed -i 's/192.168.1.1/192.168.6.1/g' package/base-files/files/bin/config_generate
sed -i "s/192\.168\.[0-9]*\.[0-9]*/192.168.6.1/g" $(find ./feeds/luci/modules/luci-mod-system/ -type f -name "flash.js")
sed -i 's/ImmortalWrt/OpenWrt/g' package/base-files/files/bin/config_generate
mv $GITHUB_WORKSPACE/patch/7621-237imm/defset-7915 package/emortal/default-settings/files/99-default-settings
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
git clone --depth 1 https://github.com/sirpdboy/netspeedtest.git package/netspeedtest


mv $GITHUB_WORKSPACE/patch/7621-237imm/app/pw/proxy_host package/base-files/files/etc/proxy_host
mv $GITHUB_WORKSPACE/patch/7621-237imm/app/pw/direct_host package/base-files/files/etc/direct_host
mv $GITHUB_WORKSPACE/patch/7621-237imm/app/crontabs package/base-files/files/etc/crontabs

mv $GITHUB_WORKSPACE/patch/7621-237imm/argon/bg1.jpg feeds/luci/themes/luci-theme-argon/htdocs/luci-static/argon/img/bg1.jpg
mv $GITHUB_WORKSPACE/patch/7621-237imm/argon/favicon.ico feeds/luci/themes/luci-theme-argon/htdocs/luci-static/argon/favicon.ico
mv $GITHUB_WORKSPACE/patch/7621-237imm/argon/cascade.css feeds/luci/themes/luci-theme-argon/htdocs/luci-static/argon/css/cascade.css
mv $GITHUB_WORKSPACE/patch/7621-237imm/argon/argon.svg feeds/luci/themes/luci-theme-argon/htdocs/luci-static/argon/img/argon.svg
rm -rf feeds/luci/themes/luci-theme-argon/htdocs/luci-static/argon/icon 
mv $GITHUB_WORKSPACE/patch/7621-237imm/argon/icon feeds/luci/themes/luci-theme-argon/htdocs/luci-static/argon/icon
sed -i 's/5e72e4/bb24f2/g' feeds/luci/themes/luci-theme-argon/htdocs/luci-static/argon/css/cascade.css

mv $GITHUB_WORKSPACE/patch/7621-237imm/mtwifi/mtk_wifi_apcli.htm package/emortal/luci-app-mtwifi/luasrc/view/admin_mtk/mtk_wifi_apcli.htm
mv $GITHUB_WORKSPACE/patch/7621-237imm/mtwifi/mtk_wifi_dev_cfg.htm package/emortal/luci-app-mtwifi/luasrc/view/admin_mtk/mtk_wifi_dev_cfg.htm
mv $GITHUB_WORKSPACE/patch/7621-237imm/mtwifi/mtk_wifi_overview.htm package/emortal/luci-app-mtwifi/luasrc/view/admin_mtk/mtk_wifi_overview.htm
mv $GITHUB_WORKSPACE/patch/7621-237imm/mtwifi/mtk_wifi_vif_cfg.htm package/emortal/luci-app-mtwifi/luasrc/view/admin_mtk/mtk_wifi_vif_cfg.htm
mv $GITHUB_WORKSPACE/patch/7621-237imm/mtwifi/mtkwifi.lua package/emortal/luci-app-mtwifi/root/usr/lib/lua/mtkwifi.lua

rm -rf package/passwall/luci-app-passwall/po/*
rm -rf package/netspeedtest/luci-app-netspeedtest/po/*
sed -i 's#简体中文 (Simplified Chinese)#Русский (Russian)#g' feeds/luci/luci.mk
mv $GITHUB_WORKSPACE/patch/7621-237imm/ru/default.zh-cn.po package/emortal/default-settings/i18n/default.zh-cn.po
mv $GITHUB_WORKSPACE/patch/7621-237imm/ru/more.zh-cn.po package/emortal/default-settings/i18n/more.zh-cn.po
mv $GITHUB_WORKSPACE/patch/7621-237imm/ru/base.po feeds/luci/modules/luci-base/po/zh-cn/base.po
mv $GITHUB_WORKSPACE/patch/7621-237imm/ru/eqos.po package/emortal/luci-app-eqos-mtk/po/zh-cn/eqos.po
mv $GITHUB_WORKSPACE/patch/7621-237imm/ru/firewall.po feeds/luci/applications/luci-app-firewall/po/zh-cn/firewall.po
mv $GITHUB_WORKSPACE/patch/7621-237imm/ru/upnp.po feeds/luci/applications/luci-app-upnp/po/zh-cn/upnp.po
mv $GITHUB_WORKSPACE/patch/7621-237imm/ru/release_ram.po feeds/luci/applications/luci-app-ramfree/po/zh-cn/release_ram.po
mv $GITHUB_WORKSPACE/patch/7621-237imm/ru/mia.po feeds/luci/applications/luci-app-accesscontrol/po/zh-cn/mia.po
#mv $GITHUB_WORKSPACE/patch/7621-237imm/ru/passwall.po package/passwall/luci-app-passwall/po/zh-cn/passwall.po
#mv $GITHUB_WORKSPACE/patch/7621-237imm/ru/netspeedtest.po package/netspeedtest/luci-app-netspeedtest/po/zh-cn/netspeedtest.po
#mv $GITHUB_WORKSPACE/patch/7621-237imm/ru/default.zh-cn.po package/emortal/default-settings/i18n/default.zh-cn.po
#mv $GITHUB_WORKSPACE/patch/7621-237imm/ru/more.zh-cn.po package/emortal/default-settings/i18n/more.zh-cn.po

#rm -rf feeds/luci/modules/luci-base/po/zh-cn
#rm -rf feeds/luci/applications/luci-app-passwall/po/zh-cn
#rm -rf feeds/luci/applications/luci-app-timecontrol/po/zh-cn
#rm -rf feeds/luci/applications/luci-app-firewall/po/zh-cn
#rm -rf feeds/luci/applications/luci-app-upnp/po/zh-cn
#rm -rf package/emortal/luci-app-eqos-mtk/po/zh-cn
#rm -rf package/emortal/luci-app-turboacc-mtk/po/zh-cn
# git clone -b 18.06 --depth=1 https://github.com/jerrykuku/luci-theme-argon.git feeds/luci/themes/luci-theme-argon
# git clone -b 18.06 --depth=1 https://github.com/jerrykuku/luci-app-argon-config feeds/luci/applications/luci-app-argon-config

git clone https://github.com/xiaorouji/openwrt-passwall.git package/passwall
rm -rf package/passwall/luci-app-passwall/po/*
