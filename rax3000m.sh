# 修改默认IP，主机名，WiFi名称
sed -i 's/192.168.1.1/192.168.23.1/g' package/base-files/files/bin/config_generate
sed -i 's/ImmortalWrt/RAX3000M/g' package/base-files/files/bin/config_generate
sed -i 's/ImmortalWrt/CMCCRAX/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
