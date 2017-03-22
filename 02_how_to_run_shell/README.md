# 怎样运行shell

>假设a.sh是一个shell文件，下面介绍如何在MacOS运行shell文件

### 第一步 将`a.sh`文件放到你的Mac桌面

### 第二步 打开`终端`应用
`Finder`-->`应用程序`-->`实用工具`-->`终端.app`
  
### 第三步 切换目录

在`终端`中输入内容：
```bash
cd Desktop      #作用是将终端工作目录切换到桌面
```
### 第四步 执行`a.sh`文件
```bash
sh a.sh           
```
### 第五步 查看执行结果 结束

<br>

## 关于文件del_cache.sh
	del_cache.sh的作用是删除一个缓存文件，这个文件占用了存储空间中“可清除”的部分，删除的文件为：
	/System/Library/Caches/com.apple.coresymbolicationd/data

点击下载[del_cache.sh.zip](https://github.com/zimingwz/macos_command/raw/master/02_how_to_run_shell/del_cache.sh.zip)

>本脚本程序不一定适于所有“**可清除**”的情况。

