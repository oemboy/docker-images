#!/bin/bash
#mvn -Dfile.encoding=UTF-8 clean deploy -P docker-jdk8,docker-jdk11 -s /root/.m2/settings69.xml
#mvn -Dfile.encoding=UTF-8  --add-host dimpt.site:10.100.240.25 clean deploy -P team-agent -s /root/.m2/settings69.xml
mvnd clean deploy -P alpine-jdk17,alpine-jre17
