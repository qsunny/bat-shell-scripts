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

- -a 列出所有文件，包括隐藏文件
- -l 启用长列表格式
- --time-style=FORMAT 显示指定 FORMAT 的时间
- +％D 以 ％m/％d/％y （月/日/年）格式显示或使用日期