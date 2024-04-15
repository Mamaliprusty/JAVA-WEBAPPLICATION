
FROM tomee
MAINTAINER kingstone

COPY ./webapp/target/webapp.war /usr/local/tomee/webapps/testapp.war
 
