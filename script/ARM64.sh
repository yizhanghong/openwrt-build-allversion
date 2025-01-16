sed -i 's/192.168.1.1/192.168.100.2/g' package/base-files/files/bin/config_generate
sed -i "s/192\.168\.[0-9]*\.[0-9]*/192.168.100.2/g" $(find ./feeds/luci/modules/luci-mod-system/ -type f -name "flash.js")
sed -i 's/ImmortalWrt/OpenWrt/g' package/base-files/files/bin/config_generate
sed -i 's/ImmortalWrt/OpenWrt/g' package/network/config/wifi-scripts/files/lib/wifi/mac80211.uc

#mv $GITHUB_WORKSPACE/patch/imm23/299-mydef.sh $OPENWRT_PATH/package/base-files/files/etc/uci-defaults/299-mydef.sh

# 添加额外插件
git clone --depth=1 https://github.com/esirplayground/luci-app-poweroff package/luci-app-poweroff
git clone --depth=1 https://github.com/ophub/luci-app-amlogic package/luci-app-amlogic
# git clone --depth=1 https://github.com/jerrykuku/luci-theme-argon package/mypackage/luci-theme-argon
# git clone --depth=1 https://github.com/jerrykuku/luci-app-argon-config package/mypackage/luci-app-argon-config

# iStore
git clone --depth=1 -b main https://github.com/linkease/istore.git package/istore
git clone --depth=1 -b master https://github.com/linkease/nas-packages.git package/nas-packages
git clone --depth=1 -b main https://github.com/linkease/nas-packages-luci.git package/nas-luci
mv package/nas-packages/network/services/* package/nas-packages/
rm -rf package/nas-packages/network

#git clone --depth=1 https://github.com/kiddin9/openwrt-clouddrive2.git package/luci-app-clouddrive2
# git clone --depth=1 https://github.com/linkease/istore-packages.git package/istore-packages
# mv package/istore-packages/luci-app-gowebdav package/luci-app-gowebdav
# mv package/istore-packages/gowebdav package/gowebdav
# rm -rf package/istore-packages

find ./ | grep Makefile | grep v2ray-geodata | xargs rm -f
find ./ | grep Makefile | grep mosdns | xargs rm -f
git clone https://github.com/sbwml/luci-app-mosdns -b v5 package/mosdns
git clone https://github.com/sbwml/v2ray-geodata package/v2ray-geodata

git clone --depth 1 https://github.com/kenzok8/small-package.git package/kz8-small
mv package/kz8-small/luci-app-adguardhome package/luci-app-adguardhome
mv package/kz8-small/luci-app-ikoolproxy package/luci-app-ikoolproxy
mv package/kz8-small/luci-app-macvlan package/luci-app-macvlan
mv package/kz8-small/luci-app-partexp package/luci-app-partexp
mv package/kz8-small/luci-app-wrtbwmon package/luci-app-wrtbwmon
mv package/kz8-small/wrtbwmon package/wrtbwmon
mv package/kz8-small/luci-app-webrestriction package/luci-app-webrestriction
rm -rf package/kz8-small

# 添加kenzok8_small插件库, 编译新版Sing-box和hysteria，需golang版本1.20或者以上版本 ，可以用以下命令
#rm -rf feeds/packages/lang/golang
#git clone --depth=1 https://github.com/kenzok8/golang feeds/packages/lang/golang
#删除自带的老旧依赖
#rm -rf feeds/packages/net/{microsocks,v2ray*,xray*,mosdns,sing-box}
#rm -rf feeds/packages/utils/v2dat
#下载安装kenzok8的small库
#sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
#./scripts/feeds update -a
#./scripts/feeds install -a
