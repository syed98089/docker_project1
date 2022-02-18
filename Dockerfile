FROM tomcat:8

LABEL MAINTAINER="Syed KAmil"

COPY /var/lib/jenkins/workspace/build_job/webapp/target/*.war /usr/local/tomcat/webapps/

EXPOSE 8080

