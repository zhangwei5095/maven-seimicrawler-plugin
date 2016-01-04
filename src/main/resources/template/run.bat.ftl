@echo off
set JAVA_CMD=java
set SEIMI_HOME=..
set CLASS_PATH=.;%SEIMI_HOME%/seimi/classes;%SEIMI_HOME%/seimi/lib/*;
:: windows环境下注意日志输出编码要与系统控制台一致
set SEIMI_SYS_ARGS=-Dfile.encoding=GBK
:: e.g. set SEIMI_CRAWLER_ARGS=8080 basic 这里指定要启动的Crawler的name，若第一个参数为数字则认为是启动改端口号的内置http服务接受http接口发送过来的Request
set SEIMI_CRAWLER_ARGS=
%JAVA_CMD% -cp %CLASS_PATH% %SEIMI_SYS_ARGS% cn.wanghaomiao.seimi.boot.Run %SEIMI_CRAWLER_ARGS%