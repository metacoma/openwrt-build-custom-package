```
./build.sh
git clone https://github.com/openwrt/openwrt
(cd openwrt; git checkout lede-17.01)
./run.sh
curl -L https://github.com/openwrt/packages/pull/6016.patch | git am
mkdir -p /tmp/packages/net
mv net/3proxy /tmp/packages/net
echo "src-link local /tmp/packages" >> feeds.conf.default
./scripts/feeds update -a
./scripts/feeds install -a
printf 'CONFIG_PACKAGE_3proxy=y\nCONFIG_PACKAGE_3proxy-socks=y\nCONFIG_PACKAGE_3proxy-3proxy=y\n' >> .config
make tools/install
make toolchain/install
make -j1 V=99 package/3proxy/compile
make -j1 V=99 package/3proxy/intall
make -j1 V=99 package/index
```
