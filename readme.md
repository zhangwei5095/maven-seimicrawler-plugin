maven-seimicrawler-plugin
==========
Package seimicrawler project so that can be fast and standalone deployed.It is based on maven-war-plugin and modified.

`maven-seimicrawler-plugin`是基于`maven-war-plugin` v2.6版本修改定制而来。旨在方便开发者对于SeimiCrawler工程的快速打包并独立部署。

# 开始 #
pom添加添加plugin
```
<plugin>
    <groupId>cn.wanghaomiao</groupId>
    <artifactId>maven-seimicrawler-plugin</artifactId>
    <version>1.0.0</version>
    <executions>
        <execution>
            <phase>package</phase>
            <goals>
                <goal>build</goal>
            </goals>
        </execution>
    </executions>
    <!--<configuration>-->
        <!-- 默认target目录 -->
        <!--<outputDirectory>/some/path</outputDirectory>-->
    <!--</configuration>-->
</plugin>
```
执行`mvn clean package`即可，包目录结构如下：
```
.
├── bin
│   ├── run.bat #windows下启动脚本
│   └── run.sh #Linux下启动脚本
└── seimi
    ├── classes #Crawler工程业务类及相关配置文件目录
    └── lib #工程依赖包目录
```