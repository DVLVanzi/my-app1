FROM tomcat:8

RUN useradd -r -u 1003 -g duser1 duser1
USER duser1
# Take the war and copy to webapps of tomcat
COPY target/*.war /usr/local/tomcat/webapps/



