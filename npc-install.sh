#!/bin/sh
#Author=Jason
#Web=http://www.wmdxcn.com
mkdir /opt/npc
cd /opt/npc
wget https://github.com/ehang-io/nps/releases/download/v0.26.10/linux_amd64_client.tar.gz
tar -zxvf linux_amd64_client.tar.gz
echo "连接服务端并注册服务开机自启"
read -p "服务器地址(IP或域名):" ip
read -p "通信端口:" port
read -p "VKEY:" vkey
./npc install -server=$ip:$port -vkey=$vkey -type=tcp
npc start
exit 0
