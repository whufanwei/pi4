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


find ./ | grep Makefile | grep v2ray-geodata | xargs rm -f
find ./ | grep Makefile | grep mosdns | xargs rm -f
git clone https://github.com/sbwml/luci-app-mosdns -b v5 package/mosdns
git clone https://github.com/sbwml/v2ray-geodata package/v2ray-geodata

#修复核心及添加温度显示
sed -i 's|pcdata(boardinfo.system or "?")|luci.sys.exec("uname -m") or "?"|g' feeds/luci/modules/luci-mod-admin-full/luasrc/view/admin_status/index.htm
sed -i 's/or "1"%>/or "1"%> ( <%=luci.sys.exec("expr `cat \/sys\/class\/thermal\/thermal_zone0\/temp` \/ 1000") or "?"%> \&#8451; ) /g' feeds/luci/modules/luci-mod-admin-full/luasrc/view/admin_status/index.htm

# 修改默认IP为192.168.50.100
sed -i 's/192.168.1.1/192.168.50.100/g' package/base-files/files/bin/config_generate 

#修改机器名称
sed -i 's/OpenWrt/RaspberryPi4/g' package/base-files/files/bin/config_generate

#替换banner
rm -rf package/base-files/files/etc/banner
cp -f ../banner package/base-files/files/etc/
