# 如何检查 Linux 中的程序和监听的端口 #

1. sudo lsof -i -P -n | grep LISTEN
1. sudo netstat -tulpn | grep LISTEN
1. sudo nmap -sTU -O IP地址


方式 1：lsof 命令

   ` $ sudo lsof -i -P -n | grep LISTEN`

    sshd85379 root3u  IPv4 0xffff80000039e000  0t0  TCP 10.86.128.138:22 (LISTEN)

- sshd 是程序的名称
- 10.86.128.138 是 sshd 程序绑定 (LISTEN) 的 IP 地址
- 22 是被使用 (LISTEN) 的 TCP 端口
- 85379 是 sshd 任务的进程 ID (PID)


方式 2：netstat 命令

-  netstat -tulpn | grep LISTEN
-  netstat -anp tcp | grep LISTEN
-  netstat -anp udp | grep LISTEN

方式 3：nmap 命令

- sudo nmap -sT -O localhost
- sudo nmap -sU -O 192.168.2.13 ### 列出打开的 UDP 端口
- sudo nmap -sT -O 192.168.2.13 ### 列出打开的 TCP 端口

命令合并 TCP/UDP 扫描:

sudo nmap -sTU -O 192.168.2.13

在 windows 系统下可以使用下面的命令检查端口使用情况：

- netstat -bano | more
- netstat -bano | grep LISTENING
- netstat -bano | findstr /R /C:"[LISTING]"


使用 ls 命令，只列出你的 home 文件夹中今天的文件。

    ls  -al --time-style=+%D | grep 'date +%D'
	ls -l --time-style=full-iso
	ls --full-time

- -a 列出所有文件，包括隐藏文件
- -l 启用长列表格式
- --time-style=FORMAT 显示指定 FORMAT 的时间 FORMAT可以是以下格式:
- full-iso
- long-iso
- iso
- locale
- +%H:%M:%S:%D
- +％D 以 ％m/％d/％y （月/日/年）格式显示或使用日期
- ls –-format=across
- ls --format=comma
- ls --format=horizontal
- ls --format=long
- ls --format=single-column
- ls --format=verbose
- ls --format=vertical
- ls --sort=extension
- ls --sort=size
- ls --sort=time
- ls --sort=version
- ls --sort=none
- ls --width 80

1. 查找忽略文件名
- find /home -iname tecmint.txt
1. 查找目录
- find / -type d -name Tecmint
1. 查找所有php文件
- find . -type f -name "*.php"
1. 按权限查找
- find . -type f -perm 0777 -print
- find / -type f ! -perm 777 (无有777权限)
- find /tmp -type d -empty
- find /tmp -type f -empty
- find . -type f -name "*.txt" -exec rm -f {} \;
- find / -user root -name tecmint.txt
- find /home -group developer
- find / -mtime 50 (修改50天)
- find / -atime 50 (最近50访问)
- find / -mtime +50 –mtime -100 (50-100天修改的)
- find / -cmin -60 (1小时前改变)
- find / -mmin -60 (1小时前修改)
- find / -size 50M
- find / -size +50M -size -100M
- find / -size +100M -exec rm -rf {} \;
- ind ./ -size 0 -exec rm {} \; 删除文件大小为零的文件 （还可以以这样做：rm -i `find ./ -size 0`  或 find ./ -size 0 | xargs rm -f &） 