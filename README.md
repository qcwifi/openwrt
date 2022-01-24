git clone -b openwrt-21.02 --single-branch https://github.com/qcwifi/openwrt.git && cd openwrt

./scripts/feeds update -a && ./scripts/feeds install -a

make menuconfig

make kernel_menuconfig -j6 V=s

make -j6 V=s

make package/luci-app-xx/compile V=99
