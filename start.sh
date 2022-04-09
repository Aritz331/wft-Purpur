#!/bin/bash

curl -k "https://api.purpurmc.org/v2/purpur/1.18.1/latest/download" -L -o purpur.jar --progress-bar
(sleep 1h; echo stop) | java -Xmx3G -XX:+UnlockExperimentalVMOptions -XX:+UseG1GC -XX:G1NewSizePercent=20 -XX:G1ReservePercent=20 -XX:MaxGCPauseMillis=50 -XX:G1HeapRegionSize=32M -Dlog4j.configurationFile=log4j2.xml --add-modules=jdk.incubator.vector -jar "%%i" nogui &
