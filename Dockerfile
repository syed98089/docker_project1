FROM tomcat:8

LABEL MAINTAINER="Syed KAmil"

COPY ./target/*.war /usr/local/tomcat/webapps/webapp.war

EXPOSE 8080

