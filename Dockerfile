FROM tomcat:8

RUN groupadd -g 1003 dockeruser && \
    useradd -r -u 1003 -g dockeruser duser1
USER duser1
# Take the war and copy to webapps of tomcat
COPY target/*.war /usr/local/tomcat/webapps/



