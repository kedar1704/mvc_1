FROM tomcat:8
MAINTAINER kedar
COPY /target/mvc_1.war /usr/local/tomcat/webapps/
EXPOSE 8080
ENTRYPOINT ["java","-jar","mvc_1.war"]
