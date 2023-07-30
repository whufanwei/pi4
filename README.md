

#  Openwrt 云自动编译
⏰ **每周自动拉取最新源码自动编译**

    
  <p align=center>  <a href="https://github.com/whufanwei/pi4/releases"> 下载地址 </a>
    .
    <a href="https://github.com/whufanwei/pi4/actions"> Action </a> </p>



## 目录


- [固件特性](#固件特性)
- [文件目录说明](#文件目录说明)  
- [定制固件](#定制固件)  
  - [注意事项](#注意事项)  
- [固件预览](#固件预览)
- [版权说明](#版权说明)

<br>


### 🎯固件默认设置   
- 路由器地址: `192.168.50.100`   
- 默认用户名: `root`   
- 默认密码  : `password`

<br>

## 固件特性
⏰ 固件编译改为`周更`(稳定为主，减少资源浪费)  

✨ 全新的 [Them](https://github.com/jerrykuku/luci-theme-argon)  
  

<br>


## 文件目录说明
eg:

```
filetree 
├── .github/workflows
│  ├── RaspberryPi4.yml
│  ├── update-checker.yml
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

## 定制固件 
1. Fork 此项目
2. 按需修改 ```configure.sh``` 和 ```package.sh``` 文件
3. 上传你自己的 ```xx.config``` 配置文件到configs目录 
4. 添加或修改自己的``````xx.yml``````文件 
5. 最后根据个人喜好修改 ```update-checker.yml``` 需自行添加 ```Actions secrets``` (触发自动编译)

### 注意事项：
📌 修改默认系统参数 👉 ```configure.sh```   
📌 添加其它Luci插件 👉 ```package.sh```  
📌 插件 / 应用配置文件 👉 ```configs/External.config```  
📌 其它机型添加 👉 ```.github/workflows``` 目录下并上传 ```xxx.config```机型配置文件到 ```/configs/```目录下

<br>

## 固件预览
**主界面(主题一)：**
![主界面](./assets/images/openwrt.png)

**服务/插件：**
![服务/插件](./assets/images/service.png)


## 版权说明

该项目签署了MIT 授权许可，详情请参阅 [LICENSE](https://github.com/bigbugcc/OpenWrts/blob/main/LICENSE)


## 项目支持
- [P3TERX/Actions-OpenWrt](https://github.com/P3TERX/Actions-OpenWrt)
- [coolsnowwolf/lede](https://github.com/coolsnowwolf/lede)
- [luci-theme-argon](https://github.com/jerrykuku/luci-theme-argon)

