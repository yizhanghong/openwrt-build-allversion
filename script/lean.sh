sed -i 's/192.168.1.1/192.168.23.1/g' package/base-files/files/bin/config_generate

sed -i "s/luci-theme-bootstrap/luci-theme-design/g" $(find ./feeds/luci/collections/ -type f -name "Makefile")
# sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
# ./scripts/feeds update -a
# ./scripts/feeds install -a

# 添加额外插件
rm -rf feeds/luci/applications/luci-app-argon-config
rm -rf feeds/luci/themes/luci-theme-argon
git clone -b 18.06 --depth=1 https://github.com/jerrykuku/luci-app-argon-config.git feeds/luci/applications/luci-app-argon-config
git clone -b 18.06 --depth=1 https://github.com/jerrykuku/luci-theme-argon.git feeds/luci/themes/luci-theme-argon

git clone --depth=1 https://github.com/lucikap/luci-app-ua2f.git  package/luci-app-ua2f
git clone --depth=1 https://github.com/EOYOHOO/UA2F.git package/UA2F
git clone --depth=1 https://github.com/EOYOHOO/rkp-ipid.git package/rkp-ipid


#git clone --depth=1 https://github.com/fw876/helloworld.git package/helloworld
git clone --depth=1 https://github.com/vernesong/OpenClash.git  package/openclash
#git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall-packages.git package/passwall-packages
#git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall.git package/luci-app-passwall
#git clone --depth=1 https://github.com/Siriling/5G-Modem-Support.git package/5g-modem

# iStore
git clone --depth=1 -b main https://github.com/linkease/istore.git package/istore
git clone --depth=1 -b master https://github.com/linkease/nas-packages.git package/nas-packages
git clone --depth=1 -b main https://github.com/linkease/nas-packages-luci.git package/nas-luci
mv package/nas-packages/network/services/* package/nas-packages/
rm -rf package/nas-packages/network

# 修改版本为编译日期
# date_version=$(date +"%y.%m.%d")
# orig_version=$(cat "package/lean/default-settings/files/zzz-default-settings" | grep DISTRIB_REVISION= | awk -F "'" '{print $2}')
# sed -i "s/${orig_version}/R${date_version} by 5und4y/g" package/lean/default-settings/files/zzz-default-settings

# Clear the login password
#sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' package/lean/default-settings/files/zzz-default-settings


#git clone --depth=1 https://github.com/sirpdboy/sirpdboy-package.git  package/sirpdboy
#mv package/sirpdboy/luci-app-netwizard package/luci-app-netwizard
#rm -rf package/sirpdboy
