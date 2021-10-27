
FROM tomcat:9.0

COPY ./marketplace-webapp-view/target/marketplace-webapp-view.war /usr/local/tomcat/webapps
COPY ./marketplace-webapp-dao/target/classes/log4j.properties /usr/local/tomcat/conf

EXPOSE 8080
EXPOSE 80