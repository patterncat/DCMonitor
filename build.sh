#!/bin/sh
rm -rf target
mvn package
cd target


BUILD_JAR=dcmonitor-1.0.one-jar.jar
jar -xf ${BUILD_JAR}
rm -rf META-INF OneJar.class doc src com .version ${BUILD_JAR} classes maven-archiver surefire classes generated-sources
mv main/dcmonitor-1.0.jar ./dcmonitor-1.0.jar
rm -rf dependencies
mv -f lib dependencies
rm -rf main
