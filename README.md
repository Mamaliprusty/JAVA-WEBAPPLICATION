# Application url;
http://3.83.45.220:30008/testapp/

# Description

# Build webapp

Build web application using MAVEN to build java code in jenkins pipeline.
Trigger the data fron github.
URL:https://github.com/Mamaliprusty/JAVA-WEBAPPLICATION.git


 Create maven build :

  maven clean package

# create docker image

Install docker in jenkins and create docker image to copy the war file from jenkins server to tomcat server

DOCKER FILE :

FROM tomee
MAINTAINER kingstone

COPY ./webapp/target/webapp.war /usr/local/tomee/webapps/testapp.war

DEPLY TO DOCKER FILE IN TOMCAT :

sh '''cat >dockerfile<<EOF
FROM tomee
MAINTAINER kingstone

COPY webapp/target/webapp.war /usr/local/tomee/webapps/javaapp.war
EOF

'''

create docker image and push docker image to docker registry :

name of the docker image : roshnirp/javaapp


# using ansible deply to QA server

write ansible playbook to install python file and docker container on the remote host .

#  selenium test

after impliment the application in QA server using testcode we can run automation testing using jenkins pipeline and tested the code and impliment it.

# prod deployment using kubernets

testing is completed then we will deployment the application in prod environment using kubernets.


      





