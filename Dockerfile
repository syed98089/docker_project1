FROM tomcat:8

LABEL MAINTAINER="Syed KAmil"

COPY ./webapp/target/webapp.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]



