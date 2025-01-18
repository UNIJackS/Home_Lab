#!/bin/bash

path=<Absolute path to server directory>
minRam=<minimum amount of ram>M
maxRam=<minimum amount of ram>M
jarName=<Name of the jar file>.jar

cd $path
java -Xms$minRam -Xmx$maxRam -XX:+UseG1GC -jar $jarName nogui
