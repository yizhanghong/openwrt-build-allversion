sed -i 's/192.168.6.1/192.168.23.1/g' package/base-files/files/bin/config_generate
sed -i 's/ImmortalWrt/JCG-Q20/g' package/base-files/files/bin/config_generate

git clone --depth=1 https://github.com/sirpdboy/luci-app-eqosplus package/luci-app-eqosplus
