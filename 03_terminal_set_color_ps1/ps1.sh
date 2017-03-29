#!/bin/bash
#配合zimingwz.github.io使用
#作用：修改变量PS1 自定义终端命令提示消息的样式和内容
#作者：微博 weibo.com/zimingbj
#本脚本只适合MacOS系统
echo "\033[37;44m***请先通过访问 zimingwz.github.io 获得PS1变量***\033[0m"
read -p "粘贴变量内容:" -r ps1
checkps1=$(echo $ps1 | grep 'PS1=')


if [ -z "$checkps1" ]
    then
        echo '\033[31m输入内容不合法，结束 T_T\033[0m'
        exit 1
fi


line=$(grep -n "PS1=" ~/.bash_profile | cut -d ":" -f 1)

if [ -n "$line" ]
    then
        line="$line"d
        sed -i '' $line ~/.bash_profile
fi


echo $ps1 >> ~/.bash_profile
echo "\033[31m配置文件修改完成 ^_^\033[0m"
echo "\033[31m请重新登录终端窗口查看效果\033[0m"
