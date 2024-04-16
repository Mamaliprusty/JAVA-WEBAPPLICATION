# Application url;
http://3.83.45.220:30008/testapp/

# Description

# BUILD WEBAPP

Build web application using MAVEN to build java code in jenkins pipeline.
Trigger the data fron github.
URL:https://github.com/Mamaliprusty/JAVA-WEBAPPLICATION.git


 Create maven build

maven clean package

CREATE DOCKER IMAGE IN JENKINS SERVER

Install docker in jenkins and create docker image to copy the war file from jenkins server to tomcat server

DOCKER FILE

FROM tomee
MAINTAINER kingstone

COPY ./webapp/target/webapp.war /usr/local/tomee/webapps/testapp.war
 


