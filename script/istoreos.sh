rm -rf feeds/packages/lang/golang
git clone --depth=1 https://github.com/sbwml/packages_lang_golang -b 23.x feeds/packages/lang/golang

git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall2.git package/passwall2
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall-packages.git package/passwall-pkg
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall.git package/passwall
