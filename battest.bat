::��������һ�ּ򵥵ĳ��򣬿����� if �� goto ���������̣�Ҳ����ʹ�� for ѭ��
@echo on

::��ǰ·��
echo %~dp0

::��������������Ŀ¼��binĿ¼
::cd %~dp0bin\ 

::��������
::start "C:\Program Files (x86)\Google\Chrome\Application" chrome.exe

::��ֹ����
::taskkill /f /im QQProtect.exe

::��ȡ������� xxx /?
::���磺ping /?		cd /?	taskkill /?
::taskkill /?

::�鿴��������İ�����Ϣ
::���磺ver /?	cmd /?	set /?	rem /?	if /?	
::echo /?	goto /?		for /?	shift /?	call /?
::type /?	find /?		findstr /?		copy /?

::��ǰbatִ�е�·��
echo %cd%

::ϵͳ����
::%SystemRoot% === C:\WINDOWS (%windir% ͬ��)
::%ProgramFiles% === C:\Program Files
::%USERPROFILE% === C:\Documents and Settings\Administrator (��Ŀ¼�С����桱,����ʼ�˵���,���ղؼС���)
::%APPDATA% === C:\Documents and Settings\Administrator\Application Data
::%TEMP% === C:\DOCUME~1\ADMINI~1\LOCALS~1\Temp (%TEM% ͬ��)
::%APPDATA% === C:\Documents and Settings\Administrator\Application Data
::%OS% === Windows_NT (ϵͳ)
::%Path% === %SystemRoot%\system32;%SystemRoot%;%SystemRoot%\System32\Wbem (ԭ��������)
::%HOMEDRIVE% === C: (ϵͳ��)
::%HOMEPATH% === \Documents and Settings\Administrator

::���ݲ������������ļ�
::%[1-9]��ʾ������������ָ�������������ļ�ʱ���ļ�����ӵ��Կո�(����Tab)�ָ����ַ������������Դ�%0��%9��%0��ʾ��������������������ַ����� %1 �� %9 ˳���ʾ��
::call test2.bat "hello" "haha" (ִ��ͬĿ¼�µġ�test2.bat���ļ�����������������)
::call test2.bat

::help ����
::�﷨�� ���� /?

::Echo ����
::�﷨: echo [{on|off}] [message]
::ECHO [ON | OFF] �򿪻��Ի�رջ��Թ��ܡ�
::ECHO ��ʾ��ǰ�������á�
::ECHO [message] ��ʾ��Ϣ��

::@ ����
::��ʾ����ʾ@���������

::Goto ����
::�﷨��goto label (label�ǲ�����ָ����Ҫת�������������е��С�)

::Rem ����ע������
::�﷨��Rem [Message]

::Pause ����,��ͣ�������ִ�в�����Ļ����ʾPress any key to continue...����ʾ���ȴ��û�������������

::Call ����,������һ����������򣬲��Ҳ���ֹ�����������
::�﷨: call [[Drive:][Path] FileName [BatchParameters]] [:label [arguments]]
::call test2.bat arg1 arg2 (����ͬĿ¼�µ� test2.bat��������2����������)

::pingһ�����еľ���������
::for /L %%a in (0,1,1) do ping 192.166.0.%%a -n 1 >> tmp.txt

::color ����,���ñ�����������ɫ
::�﷨�� color bf
color 9F

::shutdown����
::shutdown -s �ػ�

set a="abcd1234"
echo %a%

::�鿴ϵͳ����
::start %SystemRoot%\system32\services.msc /s

::ֹͣ����, NET STOP ������
::��������, NET Start ������

::�š��ļ�����
::ɾ��һ���ļ������ļ�
::del /s /q E:\����\sqlcipher-3.0.1\tmp.txt
::del temp\* /q /f /s
::/S ��Ŀ¼�����⣬����ɾ��ָ��Ŀ¼�µ�������Ŀ¼
::/Q ����ģʽ���� /S ɾ��Ŀ¼��ʱ��Ҫ��ȷ��
::rmdir /q /s d:\test\logs ȫ��ֱ��ɾ�� (����ָ��Ŀ¼����)

::����Ŀ¼
::mkdir %~dp0\tt.txt
::md %~dp0\ttt.txt

::������ cls

::copy C:\test\*.* D:\back (����C��test�ļ��е������ļ�(�������ļ��м����ļ�����Ķ���)��D�̵�back�ļ���)

::dir c:\*.* > a.txt (��c���ļ��б�д�� a.txt ��)

::> �����ļ���д������(��������ļ��򸲸�)�� >> �ļ���׷������

::�޸��ļ��ĺ�׺��	ren C:\test\*.jpg *.JPG

::�޸��ļ����ļ���	rename test.jpg test2.JPG	rename *.jpg *.888.JPG

::��ĳ��վ
::start chrome.exe http://www.baidu.com
::start iexplore.exe http://www.baidu.com

shutdown /?

pause



































































