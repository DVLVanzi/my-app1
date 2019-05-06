FROM tomcat:8
ADD microenforcer /bin/microenforcer
ADD policy.json /etc/aquasec/policy/policy.json
ADD firewall.json /etc/aquasec/policy/firewall.json
CMD ["<ORIGINAL COMMAND>"]
ENTRYPOINT ["/bin/microenforcer", "<ORIGINAL ENTRYPOINT>"]
RUN groupadd -g 1002 dockeruser && \
    useradd -r -u 1002 -g dockeruser duser
USER duser
# Take the war and copy to webapps of tomcat
COPY target/*.war /usr/local/tomcat/webapps/



