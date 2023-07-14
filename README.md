

# Action Openwrt 云自动编译
⏰ **每周自动拉取最新源码自动编译**

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]

<br />

<p align="center">
  <a href="https://github.com/bigbugcc/OpenWrts">
    <img src="./assets/images/action1.jpg" alt="Logo" width="500" />
  </a>
  <h3 align="center">Openwrt/LEDE 云编译</h3>
  <p align="center">
    👉 每周定时自动拉取Openwrt最新源码编译，自动发布到 [<a herf="https://github.com/bigbugcc/OpenWrts/releases"> Releases </a>]👈
    <br />
    <a href="https://github.com/bigbugcc/OpenWrts"><strong>探索本项目的文档 »</strong></a>
    <br />
    <br />
    <a href="https://github.com/whufanwei/pi4/releases">下载地址</a>
    ·
    <a href="https://github.com/whufanwei/OpenWrts/actions">Action</a>
    ·



</p>

## 目录


- [固件特性](#固件特性)
- [自带插件](#自带插件)
- [文件目录说明](#文件目录说明)  
- [定制固件](#定制固件)  
  - [注意事项](#注意事项)  
- [固件预览](#固件预览)
- [版权说明](#版权说明)
- [项目支持](#项目支持)

<br>


### 🎯固件默认设置   
- 路由器地址: `192.168.10.1`   
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

**网络：**
![网络](./assets/images/network.png)

**经典主题二：**
![登录页](./assets/images/infinityfreedom-theme.png)

**主界面：**
![主界面](./assets/images/infinityfreedom-theme-main.png)


## 版权说明

该项目签署了MIT 授权许可，详情请参阅 [LICENSE](https://github.com/bigbugcc/OpenWrts/blob/main/LICENSE)


## 项目支持
- [P3TERX/Actions-OpenWrt](https://github.com/P3TERX/Actions-OpenWrt)
- [coolsnowwolf/lede](https://github.com/coolsnowwolf/lede)
- [luci-theme-argon](https://github.com/jerrykuku/luci-theme-argon)

## Stargazers over time
[![Stargazers over time](https://starchart.cc/bigbugcc/OpenWrts.svg)](https://starchart.cc/bigbugcc/OpenWrts)

<!-- links -->
[your-project-path]:https://github.com/bigbugcc/OpenWrts/
[contributors-shield]: https://img.shields.io/github/contributors/bigbugcc/OpenWrts?style=flat-square
[contributors-url]: https://github.com/bigbugcc/OpenWrts/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/bigbugcc/OpenWrts?style=flat-square
[forks-url]: https://github.com/bigbugcc/OpenWrts/network/members
[stars-shield]: https://img.shields.io/github/stars/bigbugcc/OpenWrts?style=flat-square
[stars-url]: https://github.com/bigbugcc/OpenWrts/stargazers
[issues-shield]: https://img.shields.io/github/issues/bigbugcc/OpenWrts?style=flat-square
[issues-url]: https://img.shields.io/github/issues/bigbugcc/OpenWrts
[license-shield]: https://img.shields.io/github/license/bigbugcc/OpenWrts?style=flat-square
[license-url]: https://github.com/bigbugcc/OpenWrts/blob/master/LICENSE