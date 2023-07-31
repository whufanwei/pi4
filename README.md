

##  Openwrt 云自动编译


    
  <p align=center>  <a href="https://github.com/whufanwei/pi4/releases"> 下载地址 </a>
    .
    <a href="https://github.com/whufanwei/pi4/actions"> Action </a> </p>



### 目录


- [固件特性](#固件特性)
- [文件目录说明](#文件目录说明)  
- [定制固件](#定制固件)  
  - [注意事项](#注意事项)  
- [固件预览](#固件预览)
- [版权说明](#版权说明)

<br>


### 固件默认设置   
- 路由器地址: `192.168.50.100`   
- 默认用户名: `root`   
- 默认密码  : `password`

<br>


### 文件目录说明
eg:

```
filetree 
├── .github/workflows
│  ├── RaspberryPi4.yml
├── /configs/ (配置文件目录)
│  ├── External.config (插件配置文件)
│  ├── RPi4.config
├── configure.sh (固件参数修改)
├── package.sh (luci-app)

Tips:
RPi4.config - 该类型配置文件主要为机型配置文件
External.conf  - 主要用于配置固件插件应用
```
<br>

### 注意事项：
📌 修改默认系统参数 👉 ```configure.sh```   
📌 添加其它Luci插件 👉 ```package.sh```  
📌 插件 / 应用配置文件 👉 ```configs/External.config```  

<br>

### 固件预览
**主界面(主题一)：**
![主界面](./assets/images/openwrt.png)

**服务/插件：**
![服务/插件](./assets/images/service.png)


### 版权说明

该项目签署了MIT 授权许可，详情请参阅 [LICENSE](https://github.com/bigbugcc/OpenWrts/blob/main/LICENSE)


### 项目支持
- [P3TERX/Actions-OpenWrt](https://github.com/P3TERX/Actions-OpenWrt)
- [coolsnowwolf/lede](https://github.com/coolsnowwolf/lede)
- [luci-theme-argon](https://github.com/jerrykuku/luci-theme-argon)

