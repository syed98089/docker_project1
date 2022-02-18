FROM tomcat:8

LABEL MAINTAINER="Syed KAmil"

COPY var/lib/jenkins/workspace/build_job/webapp/target/webapp.war /usr/local/tomcat/webapps/
EXPOSE 8080

