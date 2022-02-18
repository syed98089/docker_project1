FROM tomcat:8

LABEL MAINTAINER="Syed KAmil"

ADD ./target/webapp.war /usr/local/tomcat/webapps/

EXPOSE 8080

