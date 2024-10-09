sed -i 's/192.168.1.1/192.168.23.1/g' package/base-files/files/bin/config_generate
sed -i 's/ImmortalWrt/OpenWrt/g' package/base-files/files/bin/config_generate
# 添加额外插件
git clone --depth=1 https://github.com/esirplayground/luci-app-poweroff package/luci-app-poweroff
git clone --depth=1 https://github.com/ophub/luci-app-amlogic package/luci-app-amlogic
git clone --depth=1 https://github.com/kiddin9/openwrt-clouddrive2.git package/luci-app-clouddrive2
# git clone --depth=1 https://github.com/jerrykuku/luci-theme-argon package/mypackage/luci-theme-argon
# git clone --depth=1 https://github.com/jerrykuku/luci-app-argon-config package/mypackage/luci-app-argon-config

# iStore
git clone --depth=1 -b main https://github.com/linkease/istore.git package/istore
git clone --depth=1 -b master https://github.com/linkease/nas-packages.git package/nas-packages
git clone --depth=1 -b main https://github.com/linkease/nas-packages-luci.git package/nas-luci
mv package/nas-packages/network/services/* package/nas-packages/
rm -rf package/nas-packages/network

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
