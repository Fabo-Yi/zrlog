FROM tomcat:7
COPY target/*.war  /usr/local/tomcat/webapps/
RUN mv /usr/local/tomcat/webapps/zrlog-1.8.0-SNAPSHOT.war /usr/local/tomcat/webapps/zrlog.war

