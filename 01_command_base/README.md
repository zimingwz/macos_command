# 01_command_base
### 基础命令

cd		切换目录 change directory
	cd ~	切换到用户目录
	cd ..	切换到上一级目录
	cd Desktop	切换到桌面目录 (前提是当前所在目录为用户目录)
	cd /Applications/	切换到应用目录
pwd		显示当前所在目录 print working directory
ls		显示目录下的文件 list directory
	ls	显示当前目录下的目录和文件名称
	ls -l	显示当前目录下的目录和文件详细列表
	ls -lh	显示当前目录下的目录和文件详细列表 并方便阅读
	ls -lh /Users	显示/Users下的所有目录和文件详细列表 并方便阅读
	ls -G	显示当前目录下的目录和文件名称 并用颜色区分文件、目录、链接
mkdir		新建目录（新建文件夹）make directories
	mkdir hello	在当前目录下创建名称为hello的目录
	mkdir Desktop/hello	在桌面创建hello目录 (前提是当前所在目录为用户目录)
	mkdir -p hello/kitty	新建一个hello，同时在hello目录里再新建一个kitty目录 -p代表递归建立目录
touch		用来新建文件（touch的作用是修改文件时间戳，如果文件不存在，则创建文件）
	touch a.txt	在当前目录下新建一个a.txt文件
	touch Desktop/a.docx	在桌面新建一个a.docx的文件 (前提是当前所在目录为用户目录)
open		打开文件或目录
	open a.txt	打开a.txt文件
	open safari.app	打开safari.app  (前提是当前所在目录为Applications)
	open ~/Downloads/	打开下载目录
	open .	打开当前目录
mv		移动文件或目录（剪切）move
	mv a.txt ..	将当前目录下的a.txt文件移动到 上一级目录下
	mv a.txt Desktop/	将当前目录下的a.txt文件移动到桌面 (前提是当前所在目录为用户目录)
	mv a.txt b.txt	将文件a.txt  更名为 b.txt
cp		复制文件或目录 copy
	cp a.txt ~	将文件a.txt 复制到用户目录下
	cp a.txt ~/b.txt	将文件a.txt 复制到用户目录下 并改名为b.txt
	cp -r hello ..	将目录hello复制到上一级目录下 注意-r的使用
rm		删除文件或者目录 remove
	rm a.txt	删除文件a.txt
	rm -r hello	删除目录hello
ln		给文件或者目录建立链接 links
	ln -s /Applications/QQ.app ~/Desktop/	给QQ建立软链接文件到桌面（相当于windows下的发送QQ的快捷方式到桌面）
man		查看命令手册 manual
	man ls	查看ls命令的手册 (按空格翻页 按Q退出)
	man touch	查看ls命令的手册 
echo 		输出命令
	echo 'ls'	输出字符串ls
	echo `ls`	输出ls命令执行结果
	echo $(ls)	输出ls命令执行结果
