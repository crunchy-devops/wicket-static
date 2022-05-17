# Pull base image 
#From tomcat:8-jre8

# Maintainer 
#MAINTAINER "valaxytech@gmail.com"
#COPY ./webapp.war /usr/local/tomcat/webapps
#RUN cp -R /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps
FROM jetty:9.4.46-jdk11-openjdk
COPY *.war /var/lib/jetty/webapps/
