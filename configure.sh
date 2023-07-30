#!/bin/bash
# Modify default system settings

# Hello World
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default

# passwall
echo "src-git PWpackages https://github.com/xiaorouji/openwrt-passwall.git;packages" >> feeds.conf.default
echo "src-git PWluci https://github.com/xiaorouji/openwrt-passwall2.git" >> feeds.conf.default

# luci-theme-infinityfreedom
echo 'src-git infinityfreedom https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom.git' >>feeds.conf.default

# luci-theme-neobird
echo 'src-git neobird https://github.com/thinktip/luci-theme-neobird.git' >>feeds.conf.default


# 替换默认主题
rm -rf package/lean/luci-theme-argon 
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git  package/lean/luci-theme-argon

# 修改默认IP为192.168.50.100
sed -i 's/192.168.1.1/192.168.50.100/g' package/base-files/files/bin/config_generate 

#修改机器名称
sed -i 's/OpenWrt/RaspberryPi4/g' package/base-files/files/bin/config_generate


