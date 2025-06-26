#!/bin/bash

# Define proxy control functions
open_proxy() {
  # 启动代理，替换成你实际的命令
  echo "开启代理..."
  # 示例：假设你要启动一个代理命令
  # sudo systemctl start proxy-service
}

close_proxy() {
  # 关闭代理，替换成你实际的命令
  echo "关闭代理..."
  # 示例：假设你要停止一个代理命令
  # sudo systemctl stop proxy-service
}

# Generate tray icon with options using Zenity
while true; do
  action=$(zenity --list --radiolist \
    --title="Proxy Control" \
    --column="Pick" --column="Action" \
    TRUE "Open Proxy" \
    FALSE "Close Proxy" \
    --width=250 --height=150)

  if [ "$action" == "Open Proxy" ]; then
    open_proxy
  elif [ "$action" == "Close Proxy" ]; then
    close_proxy
  fi
done
