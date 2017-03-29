# 修改终端命令提示信息颜色

视频介绍:[点我到优酷看视频](http://www.youku.com)

## 下载文件ps1.sh
点击下载:[ps1.sh.zip](https://github.com/zimingwz/macos_command/raw/master/03_terminal_set_color_ps1/ps1.sh.zip)

	ps1.sh脚本的作用是将PS1变量信息写入用户配置文件，来改变终端命令提示信息的颜色。
	可以配合PS1变量生成工具(后文介绍)来生成PS1变量。
	如果你会使用vi编辑器，可不使用这个脚本，而直接修改 '~/.bash_profile' 配置文件(MacOS)即可。 


## PS1变量生成工具
PS1生成工具请访问:[zimingwz.github.io](https://zimingwz.github.io/)

	为了更方便的生成PS1变量，笔者制作了一个WEB应用，可以通过模拟界面事实预览效果，
	添加删除显示内容、改变前景和背景颜色、拖拽排序，来自动生成需要的PS1变量。

<br>

## PS1变量介绍

PS1是UNIX、MacOS、Linux的系统变量，用来定义终端窗口中命令输入提示符前的显示内容。<br>
PS1变量可以通过命令 `echo $PS1` 来查看。

MacOS默认的PS1变量为:

	\h:\W \u\$

其中`\h`代表**主机名称**、`\W`代表**当前目录**、 `\u`**代表当前用户**、 `\$`**代表命令提示符** ,还可以使用其他的转义内容，例如:

* `\d` ：日期
* `\H` ：完整主机名
* `\t` ：时间24小时制
* `\T` ：时间12小时制
* `\A` ：时间不含秒
* `\v` ：bash版本
* `\w` ：完整的工作路径
* `\#` ：命令计数


