---

# TCP Ping Tool

## 概述

TCP Ping Tool 是一个使用 Go 语言编写的简单网络诊断工具。它允许用户通过 TCP 协议测试到指定服务器的连接质量和响应时间。这个工具对于诊断网络连接问题、监控服务器的可达性和响应时间非常有用。

## 功能

- 支持 IPv4 和 IPv6。
- 自定义测试持续时间。
- 设置每次 Ping 的间隔时间。
- 显示详细的连接统计信息，包括发送、接收的数据包数量、丢包率以及往返时间（RTT）的最小值、平均值和最大值。

## 安装


安装 Go 后，请按照以下步骤编译程序：

```sh
go build tcping.go
```

这将在当前目录下创建一个名为 `tcping` 的可执行文件。

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
./tcping -t 10 -i 1s 192.168.1.1 80
```

这个命令将对 IP 地址 `192.168.1.1` 上的 `80` 端口进行 10 秒的 TCP Ping 测试，每秒发送一次。