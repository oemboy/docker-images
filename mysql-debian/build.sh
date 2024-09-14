#!/bin/bash
docker build --add-host dimpt.site:10.100.240.25 -t dimpt.site:8180/platform/mysql-debian:8.4.2-bullseye --push .
