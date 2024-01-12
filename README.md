---

# TCP Ping Tool

## 概述

TCP Ping Tool 是一个使用 Go 语言编写的简单网络诊断工具。它允许用户通过 TCP 协议测试到指定服务器的连接质量和响应时间。这个工具对于诊断网络连接问题、监控服务器的可达性和响应时间非常有用。

## 支持平台

包括但不限于 amd64（x86-64）、386（x86）、ARM、PowerPC 等。因此，只要你的平台支持 Go 语言，这个程序就可以在上面运行。

## 功能

- 支持 IPv4 和 IPv6。
- 自定义测试持续时间。
- 设置每次 Ping 的间隔时间。
- 显示详细的连接统计信息，包括发送、接收的数据包数量、丢包率以及往返时间（RTT）的最小值、平均值和最大值。

## 安装


Debian一键安装命令

```sh
bash <(curl -s https://raw.githubusercontent.com/rf11291/TCPing/main/install.sh)
```
其他平台用户自行下载**tcping**文件到相对应目录中

## 使用方法

```sh
tcping [选项] <目标IP> [端口]
```

### 选项

- `-4`：仅使用 IPv4。
- `-6`：仅使用 IPv6。
- `-t`：指定测试的持续时间（秒）。默认为无限。
- `-i`：设置每次 Ping 的时间间隔（默认为 1 秒）。

### 示例

```sh
tcping 1.1.1.1
```
这个命令将对 `1.1.1.1 上的 80 端口无限循环进行 TCP Ping 测试，每秒发送一次。
```sh
tcping -t 10 -i 1s 1.1.1.1 443
```
这个命令将对 1.1.1.1 上的 443 端口进行 10 秒的 TCP Ping 测试，每秒发送一次。

源代码来自于 [NS]([https://](https://www.nodeseek.com/post-24771-1)https://www.nodeseek.com/post-24771-1)
