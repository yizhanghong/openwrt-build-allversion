sed -i 's/192.168.1.1/192.168.23.1/g' package/base-files/files/bin/config_generate
sed -i 's/ImmortalWrt/OpenWrt/g' package/base-files/files/bin/config_generate
# 添加额外插件
git clone --depth=1 https://github.com/esirplayground/luci-app-poweroff package/mypackage/luci-app-poweroff
git clone --depth=1 https://github.com/ophub/luci-app-amlogic package/mypackage/luci-app-amlogic
# git clone --depth=1 https://github.com/jerrykuku/luci-theme-argon package/mypackage/luci-theme-argon
# git clone --depth=1 https://github.com/jerrykuku/luci-app-argon-config package/mypackage/luci-app-argon-config

# iStore
git clone --depth=1 -b main https://github.com/linkease/istore.git package/mypackage/istore
git clone --depth=1 -b master https://github.com/linkease/nas-packages.git package/mypackage/nas-packages
git clone --depth=1 -b main https://github.com/linkease/nas-packages-luci.git package/mypackage/nas-luci
mv package/mypackage/nas-packages/network/services/* package/mypackage/nas-packages/
rm -rf package/mypackage/nas-packages/network

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
