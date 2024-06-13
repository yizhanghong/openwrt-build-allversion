# 修改默认IP，主机名，WiFi名称
sed -i 's/192.168.1.1/192.168.23.1/g' package/base-files/files/bin/config_generate
sed -i 's/ImmortalWrt/RAX3000M/g' package/base-files/files/bin/config_generate
sed -i 's/ImmortalWrt/CMCCRAX/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# Git稀疏克隆，只克隆指定目录到本地
# function git_sparse_clone() {
#   branch="$1" repourl="$2" && shift 2
#   git clone --depth=1 -b $branch --single-branch --filter=blob:none --sparse $repourl
#   repodir=$(echo $repourl | awk -F '/' '{print $(NF)}')
#   cd $repodir && git sparse-checkout set $@
#   mv -f $@ ../package
#   cd .. && rm -rf $repodir
# }

# 添加额外插件passwall/passwall2
# 编译新版Sing-box和hysteria，需golang版本1.20或者以上版本 ，可以用以下命令
rm -rf feeds/packages/lang/golang
git clone https://github.com/kenzok8/golang feeds/packages/lang/golang

# rm -rf feeds/packages/net/{brook,chinadns-ng,dns2socks,dns2tcp,hysteria,ipt2socks,microsocks,naiveproxy}
# rm -rf feeds/packages/net/{pdnsd-alt,shadowsocksr-libev,simple-obfs,sing-box,tcping,trojan*,tuic-client,v2ray*,xray*}
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall-packages.git package/passwall-packages
rm -rf package/passwall-packages/shadowsocks-rust
# mv package/passwall-packages/sing-box package/
cp -rf package/passwall-packages/* feeds/packages/net/
rm -rf package/passwall-packages
# 添加最新passwall
rm -rf feeds/luci/applications/luci-app-passwall
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall.git package/luci-app-passwall
# 添加最新passwall2
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall2.git package/luci-app-passwall2
# mv package/sing-box package/luci-app-passwall2/
