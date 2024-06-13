sed -i 's/192.168.1.1/192.168.23.1/g' package/base-files/files/bin/config_generate
# sed -i 's/OpenWrt/L1Pro/g' package/base-files/files/bin/config_generate
git clone --depth=1 https://github.com/immortalwrt/packages.git package/immpkg
rm -rf feeds/package/net/xray-core
mv package/immpkg/net/xray-core feeds/package/net/xray-core

# 添加额外插件
git clone --depth=1 https://github.com/kongfl888/luci-app-adguardhome package/mypackage/luci-app-adguardhome
git clone --depth=1 https://github.com/ilxp/luci-app-ikoolproxy package/mypackage/luci-app-ikoolproxy
git clone --depth=1 https://github.com/esirplayground/luci-app-poweroff package/mypackage/luci-app-poweroff
git clone --depth=1 https://github.com/destan19/OpenAppFilter package/mypackage/OpenAppFilter

# git clone --depth=1 https://github.com/Jason6111/luci-app-netdata package/mypackage/luci-app-netdata


# 科学上网插件
git clone --depth=1 https://github.com/kenzok8/small package/mypackage/small

# Themes

rm -rf feeds/luci/themes/luci-theme-argon
rm -rf feeds/luci/applications/luci-app-argon-config

git clone --depth=1 -b 18.06 https://github.com/jerrykuku/luci-theme-argon feeds/luci/themes/luci-theme-argon
git clone --depth=1 -b 18.06 https://github.com/jerrykuku/luci-app-argon-config feeds/luci/applications/luci-app-argon-config
git clone --depth=1 https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom package/mypackage/luci-theme-infinityfreedom
git clone --depth=1 -b 18.06 https://github.com/kiddin9/luci-theme-edge package/mypackage/luci-theme-edge

sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# 更改 Argon 主题背景
# cp -f $GITHUB_WORKSPACE/images/bg1.jpg package/luci-theme-argon/htdocs/luci-static/argon/img/bg1.jpg

# 晶晨宝盒
git clone --depth=1 https://github.com/ophub/luci-app-amlogic package/mypackage/luci-app-amlogic

# sed -i "s|firmware_repo.*|firmware_repo 'https://github.com/haiibo/OpenWrt'|g" package/luci-app-amlogic/root/etc/config/amlogic
# sed -i "s|kernel_path.*|kernel_path 'https://github.com/ophub/kernel'|g" package/luci-app-amlogic/root/etc/config/amlogic
# sed -i "s|ARMv8|ARMv8_PLUS|g" package/luci-app-amlogic/root/etc/config/amlogic


# iStore
git clone --depth=1 -b main https://github.com/linkease/istore.git package/mypackage/istore

git clone --depth=1 -b master https://github.com/linkease/nas-packages.git package/mypackage/nas-packages
git clone --depth=1 -b main https://github.com/linkease/nas-packages-luci.git package/mypackage/nas-luci
mv package/mypackage/nas-packages/network/services/* package/mypackage/nas-packages/
rm -rf package/mypackage/nas-packages/network



# 修改本地时间格式
# sed -i 's/os.date()/os.date("%a %Y-%m-%d %H:%M:%S")/g' package/lean/autocore/files/*/index.htm

# 修改版本为编译日期
# date_version=$(date +"%y.%m.%d")
# orig_version=$(cat "package/lean/default-settings/files/zzz-default-settings" | grep DISTRIB_REVISION= | awk -F "'" '{print $2}')
# sed -i "s/${orig_version}/R${date_version} by Haiibo/g" package/lean/default-settings/files/zzz-default-settings

# 修复 hostapd 报错
# cp -f $GITHUB_WORKSPACE/scripts/011-fix-mbo-modules-build.patch package/network/services/hostapd/patches/011-fix-mbo-modules-build.patch

# 修复 armv8 设备 xfsprogs 报错
# sed -i 's/TARGET_CFLAGS.*/TARGET_CFLAGS += -DHAVE_MAP_SYNC -D_LARGEFILE64_SOURCE/g' feeds/packages/utils/xfsprogs/Makefile

# 修改 Makefile
# find package/*/ -maxdepth 2 -path "*/Makefile" | xargs -i sed -i 's/..\/..\/luci.mk/$(TOPDIR)\/feeds\/luci\/luci.mk/g' {}
# find package/*/ -maxdepth 2 -path "*/Makefile" | xargs -i sed -i 's/..\/..\/lang\/golang\/golang-package.mk/$(TOPDIR)\/feeds\/packages\/lang\/golang\/golang-package.mk/g' {}
# find package/*/ -maxdepth 2 -path "*/Makefile" | xargs -i sed -i 's/PKG_SOURCE_URL:=@GHREPO/PKG_SOURCE_URL:=https:\/\/github.com/g' {}
# find package/*/ -maxdepth 2 -path "*/Makefile" | xargs -i sed -i 's/PKG_SOURCE_URL:=@GHCODELOAD/PKG_SOURCE_URL:=https:\/\/codeload.github.com/g' {}



# echo >> feeds.conf.default
# echo 'src-git nas https://github.com/linkease/nas-packages.git;master' >> feeds.conf.default
# echo 'src-git nas_luci https://github.com/linkease/nas-packages-luci.git;main' >> feeds.conf.default
# echo 'src-git istore https://github.com/linkease/istore;main' >> feeds.conf.default
# ./scripts/feeds update nas nas_luci
# ./scripts/feeds install -a -p nas
# ./scripts/feeds install -a -p nas_luci
# ./scripts/feeds update istore
# ./scripts/feeds install -d y -p istore luci-app-store

# sed -i '$a src-git kenzok8small https://github.com/kenzok8/small' feeds.conf.default
# git pull
# ./scripts/feeds update -a
# ./scripts/feeds install -a
