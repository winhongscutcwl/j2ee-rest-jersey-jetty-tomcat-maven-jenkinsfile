:: Author: Brian Dinneen
@echo off

SET JAVA_OPTS=-Xms256m -Xmx1024m -XX:NewSize=128m -XX:MaxNewSize=256m -Xmn128M -Xms1024M -Xmx2048M
SET JENKINS_HOME=%~dp0home
SET HTTP_PORT=9090
SET JENKINS_VERSION=2.15

IF NOT EXIST %JENKINS_HOME% MKDIR %JENKINS_HOME%

echo %JENKINS_HOME%

echo "http://%COMPUTERNAME%:%HTTP_PORT%/"
java %JAVA_OPTS% -jar %JENKINS_VERSION%\jenkins.war --httpPort=%HTTP_PORT% 

