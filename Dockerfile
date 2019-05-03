FROM tomcat:8
#RUN groupadd -g 1002 dockeruser && \
#    useradd -r -u 1002 -g dockeruser duser

RUN useradd -d /home/duser -m -s /bin/bash duser
USER duser

# Take the war and copy to webapps of tomcat
COPY target/*.war /usr/local/tomcat/webapps/



