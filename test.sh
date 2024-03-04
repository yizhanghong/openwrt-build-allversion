sed -i 's/192.168.1.1/192.168.23.1/g' package/base-files/files/bin/config_generate
sed -i 's/OpenWrt/L1Pro/g' package/base-files/files/bin/config_generate

git clone --depth=1 https://github.com/ophub/luci-app-amlogic.git package/luci-app-amlogic
# git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall2.git package/luci-app-passwall2

echo >> feeds.conf.default
echo 'src-git nas https://github.com/linkease/nas-packages.git;master' >> feeds.conf.default
echo 'src-git nas_luci https://github.com/linkease/nas-packages-luci.git;main' >> feeds.conf.default
echo 'src-git istore https://github.com/linkease/istore;main' >> feeds.conf.default
./scripts/feeds update nas nas_luci
./scripts/feeds install -a -p nas
./scripts/feeds install -a -p nas_luci
./scripts/feeds update istore
./scripts/feeds install -d y -p istore luci-app-store

sed -i '$a src-git kenzok8small https://github.com/kenzok8/small' feeds.conf.default
git pull
./scripts/feeds update -a
./scripts/feeds install -a



