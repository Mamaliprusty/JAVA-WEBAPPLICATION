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

# playbook:

---
- name: Setup of docker and pip for ansible-docker integrations
  hosts: all
  tasks:
   - name: Install pip
     apt:
      name: python3-pip
      state: present
      update_cache: yes
   - name: Download and install docker and also docker-py
     shell: "{{item}}"
     with_items:
      - curl -fsSL https://get.docker.com -o get-docker.sh
      - sh get-docker.sh
      - pip3 install docker-py
...


---
- name: Create container from the customised docker image
  hosts: all
  tasks:
   - name: Create container
     docker_container:
      name: javaapp
      image: roshnirp/javaapp
      ports:
       - 9090:8080
...





