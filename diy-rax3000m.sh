#!/bin/bash

# 修改默认IP，主机名，WiFi名称
sed -i 's/192.168.1.1/192.168.23.1/g' immortalwrt-mt798x/package/base-files/files/bin/config_generate
sed -i 's/ImmortalWrt/RAX3000M/g' immortalwrt-mt798x/package/base-files/files/bin/config_generate
sed -i 's/ImmortalWrt/CMCCRAX/g' immortalwrt-mt798x/package/kernel/mac80211/files/lib/wifi/mac80211.sh

# Git稀疏克隆，只克隆指定目录到本地
# function git_sparse_clone() {
#   branch="$1" repourl="$2" && shift 2
#   git clone --depth=1 -b $branch --single-branch --filter=blob:none --sparse $repourl
#   repodir=$(echo $repourl | awk -F '/' '{print $(NF)}')
#   cd $repodir && git sparse-checkout set $@
#   mv -f $@ ../package
#   cd .. && rm -rf $repodir
# }

# 添加额外插件
# git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall-packages package/openwrt-passwall
# git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall2 package/luci-app-passwall2


# 修改版本为编译日期
# date_version=$(date +"%y.%m.%d")
# orig_version=$(cat "package/lean/default-settings/files/zzz-default-settings" | grep DISTRIB_REVISION= | awk -F "'" '{print $2}')
# sed -i "s/${orig_version}/R${date_version} /g" package/lean/default-settings/files/zzz-default-settings


# ./scripts/feeds update -a
# ./scripts/feeds install -a

