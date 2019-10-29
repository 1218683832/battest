::批处理是一种简单的程序，可以用 if 和 goto 来控制流程，也可以使用 for 循环
@echo on

::当前路径
echo %~dp0

::进入批处理所在目录的bin目录
::cd %~dp0bin\ 

::启动程序
::start "C:\Program Files (x86)\Google\Chrome\Application" chrome.exe

::终止进程
::taskkill /f /im QQProtect.exe

::获取命令帮助 xxx /?
::比如：ping /?		cd /?	taskkill /?
::taskkill /?

::查看内置命令的帮助信息
::比如：ver /?	cmd /?	set /?	rem /?	if /?	
::echo /?	goto /?		for /?	shift /?	call /?
::type /?	find /?		findstr /?		copy /?

::当前bat执行的路径
echo %cd%

::系统参数
::%SystemRoot% === C:\WINDOWS (%windir% 同样)
::%ProgramFiles% === C:\Program Files
::%USERPROFILE% === C:\Documents and Settings\Administrator (子目录有“桌面”,“开始菜单”,“收藏夹”等)
::%APPDATA% === C:\Documents and Settings\Administrator\Application Data
::%TEMP% === C:\DOCUME~1\ADMINI~1\LOCALS~1\Temp (%TEM% 同样)
::%APPDATA% === C:\Documents and Settings\Administrator\Application Data
::%OS% === Windows_NT (系统)
::%Path% === %SystemRoot%\system32;%SystemRoot%;%SystemRoot%\System32\Wbem (原本的设置)
::%HOMEDRIVE% === C: (系统盘)
::%HOMEPATH% === \Documents and Settings\Administrator

::传递参数给批处理文件
::%[1-9]表示参数，参数是指在运行批处理文件时在文件名后加的以空格(或者Tab)分隔的字符串。变量可以从%0到%9，%0表示批处理命令本身，其它参数字符串用 %1 到 %9 顺序表示。
::call test2.bat "hello" "haha" (执行同目录下的“test2.bat”文件，并输入两个参数)
::call test2.bat

::help 命令
::语法： 命令 /?

::Echo 命令
::语法: echo [{on|off}] [message]
::ECHO [ON | OFF] 打开回显或关闭回显功能。
::ECHO 显示当前回显设置。
::ECHO [message] 显示信息。

::@ 命令
::表示不显示@后面的命令

::Goto 命令
::语法：goto label (label是参数，指定所要转向的批处理程序中的行。)

::Rem 命令注释命令
::语法：Rem [Message]

::Pause 命令,暂停批处理的执行并在屏幕上显示Press any key to continue...的提示，等待用户按任意键后继续

::Call 命令,调用另一个批处理程序，并且不终止父批处理程序。
::语法: call [[Drive:][Path] FileName [BatchParameters]] [:label [arguments]]
::call test2.bat arg1 arg2 (调用同目录下的 test2.bat，且输入2个参数给他)

::ping一下所有的局域网电脑
::for /L %%a in (0,1,1) do ping 192.166.0.%%a -n 1 >> tmp.txt

::color 命令,设置背景及字体颜色
::语法： color bf
color 9F

::shutdown命令
::shutdown -s 关机

set a="abcd1234"
echo %a%

::查看系统服务
::start %SystemRoot%\system32\services.msc /s

::停止服务, NET STOP 服务名
::启动服务, NET Start 服务名

::九、文件处理
::删除一个文件或多个文件
::del /s /q E:\资料\sqlcipher-3.0.1\tmp.txt
::del temp\* /q /f /s
::/S 除目录本身外，还将删除指定目录下的所有子目录
::/Q 安静模式，带 /S 删除目录树时不要求确认
::rmdir /q /s d:\test\logs 全部直接删除 (必须指定目录名称)

::创建目录
::mkdir %~dp0\tt.txt
::md %~dp0\ttt.txt

::清屏： cls

::copy C:\test\*.* D:\back (复制C盘test文件夹的所有文件(不包括文件夹及子文件夹里的东西)到D盘的back文件夹)

::dir c:\*.* > a.txt (将c盘文件列表写入 a.txt 中)

::> 生成文件并写入内容(如果有这文件则覆盖)， >> 文件里追加内容

::修改文件的后缀名	ren C:\test\*.jpg *.JPG

::修改文件的文件名	rename test.jpg test2.JPG	rename *.jpg *.888.JPG

::打开某网站
::start chrome.exe http://www.baidu.com
::start iexplore.exe http://www.baidu.com

shutdown /?

pause



































































