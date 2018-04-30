#!/bin/bash
echo "欢迎使用网页雷达一键脚本"
echo "即将搭建4.27版本"
echo "请输入你的内网ip" 
read -p "内网ip： " ip
cd
cd libpcap-1.8.1
rm -rf KFC2018/
cd 
rm -rf KFC2018/
chmod +x restart.sh
git clone https://github.com/1321312312/KFC2018.git
cd KFC2018/
npm i
npm i -g pino
npm install -g forever
forever start index.js sniff eth0 $ip | pino

echo "搭建完成"
