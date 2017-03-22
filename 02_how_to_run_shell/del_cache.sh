#!/bin/bash
echo "开始计算在‘可清除’容量中能够释放的容量，请输入密码"
dir="/System/Library/Caches/com.apple.coresymbolicationd/"
file="$dir"data

size=$(sudo ls -lh $dir | grep "data" | awk '{print $5}')

if [ -n "$size" ]
    then
        read -p "可释放容量为 "$size"，是否释放(y/n):" input
        if [ "$input" == "y" -o "$input" == "Y" ]
            then
                if [ $(echo "$file" | wc -m) -eq 57 ]
                    then
                        rm -f $file
                        echo "删除成功"
                        exit 0
                    else
                        echo "失败"
                        exit 12
                fi

        elif [ "$input" == "N" -o "$input" == "n" ]
            then
                echo "您选择了不释放空间，程序退出"
                exit 0
            else
                echo "输入错误，程序退出"
                exit 11
        fi

    else
        echo "没有可以释放的容量,程序结束"
        exit 10
fi

#本脚本编写环境
#MacOS Sierra 10.12.3
#MacBook Pro 15寸 2015 
