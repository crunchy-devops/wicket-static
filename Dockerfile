# Pull base image 
#From tomcat:8-jre8

# Maintainer 
#MAINTAINER "valaxytech@gmail.com"
#COPY ./webapp.war /usr/local/tomcat/webapps
#RUN cp -R /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps
FROM fabric8/tomcat-9
COPY tomcat-users.xml /opt/apache-tomcat-9.0.10/conf/tomcat-users.xml
COPY *.war /opt/tomcat/webapps/
