# 修改默认IP，主机名，WiFi名称
# sed -i 's/192.168.1.1/192.168.13.1/g' package/base-files/files/bin/config_generate
# sed -i 's/ImmortalWrt/RAX3000M/g' package/base-files/files/bin/config_generate
# sed -i 's/ImmortalWrt/CMCCRAX/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
# sed -i '$d' feeds.conf.default
git clone --depth=1 https://github.com/kenzok8/small-package.git package/small-package
