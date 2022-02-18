FROM tomcat:8

LABEL MAINTAINER="Syed KAmil"

COPY ./target/*.war /usr/local/tomcat/webapps/

EXPOSE 8080

