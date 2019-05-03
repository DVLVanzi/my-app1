FROM tomcat:8
RUN groupadd -g 1002 dockeruser && \
    useradd -r -u 1002 -g dockeruser duser
USER duser
# Take the war and copy to webapps of tomcat
COPY target/*.war /usr/local/tomcat/webapps/

FROM sameersbn/redmine:2.6.1

RUN groupadd -g 1002 dockeruser && \
    useradd -r -u 1002 -g dockeruser duser
USER duser

ENV DB_TYPE mysql
ENV DB_PORT 3306
ENV DB_NAME redmine_production
ENV DB_USER redmine
ENV DB_PASS ZemuBRAXu2tadr

