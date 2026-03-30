## Docker images basic
+ alpine-jdk17

# alpine-jdk17

+ support Chinese font: simhei.ttf
+ timezone
+ net-tools curl

```shell
docker run -d \
--cap-add SYS_ADMIN \
--cap-add SYS_PTRACE \
-e JAVA_OPTS="-XX:+UnlockDiagnosticVMOptions -XX:+DebugNonSafepoints" \
dimpt.site:8181/platform/alpine-jdk17:17.0.18
```

# amazoncorretto
* 已经自带了asprof
* 
