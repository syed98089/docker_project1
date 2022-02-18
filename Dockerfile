FROM tomcat:8

LABEL MAINTAINER="Syed KAmil"

COPY target/webapp.war /usr/local/tomcat/webapps/
EXPOSE 8080

