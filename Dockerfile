FROM tomcat:8

LABEL MAINTAINER="Syed KAmil"

COPY ./server/target/webapp.war /usr/local/tomcat/webapps/

EXPOSE 8080

