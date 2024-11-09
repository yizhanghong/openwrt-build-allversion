sed -i 's/192.168.1.1/192.168.23.1/g' package/base-files/files/bin/config_generate

sed -i "s/luci-theme-bootstrap/luci-theme-design/g" $(find ./feeds/luci/collections/ -type f -name "Makefile")

#git clone --depth=1 https://github.com/fw876/helloworld.git package/helloworld
git clone --depth=1 https://github.com/vernesong/OpenClash.git  package/openclash
