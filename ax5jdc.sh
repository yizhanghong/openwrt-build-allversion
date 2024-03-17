sed -i 's/192.168.1.1/192.168.23.1/g' package/base-files/files/bin/config_generate

apply_patches() {
  [ -d patches ] || return 0

  dirname $(find patches -type f -name "*.patch") | sort -u | while read -r dir; do
    local patch_dir="$(realpath $dir)"
    cd "$(echo $dir | sed 's|^patches/|openwrt/|')"
    find $patch_dir -type f -name "*.patch" | while read -r patch; do
      git am $patch
    done
    cd -
  done
}


