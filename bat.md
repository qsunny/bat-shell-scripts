## 批处理常用命令总结 - 批处理命令简介 ##
来源: http://xstarcd.github.io/wiki/windows/windows_cmd_summary_commands.html

###echo###
### 打开回显或关闭请求回显功能，或显示消息。如果没有任何参数，echo 命令将显示当前回显设置。###
    echo [{on|off}] [message]
    Sample：@echo off / echo hello world
在实际应用中我们会把这条命令和重定向符号（也称为管道符号，一般用> 或 >> ）结合来实现输入一些命令到特定的文件中。

###rem###
 注释命令，类似于在C语言中的/*--------*/，它并不会被执行，只是起一个注释的作用，便于别人阅读和你自己日后修改。
    Rem Message
    Sample：@Rem Here is the description.
###pause###
暂停命令。运行 Pause 命令时，将显示下面的消息：Press any key to continue. . .(或：请按任意键继续. . .)
    @echo off
    :begin
    copy G:*.* d：/back
    echo 请插入另一张光盘...
    pause
    goto begin