FROM tomcat:8
#RUN groupadd -g 1002 dockeruser && \
#    useradd -r -u 1002 -g dockeruser duser

RUN groupadd -r duser1 && useradd --no-log-init -r -g duser1 duser1
USER duser1
# Take the war and copy to webapps of tomcat
COPY target/*.war /usr/local/tomcat/webapps/



