FROM maven:3.8.3-openjdk-17 AS build
ARG MVN_PROFILE
WORKDIR /app
COPY . /app/
RUN mvn -B -f /app/pom.xml  clean -P${MVN_PROFILE} -DskipTests 
RUN mvn -B -f /app/pom.xml  install -P${MVN_PROFILE} -DskipTests
RUN mvn -B -f /app/pom.xml  package -P${MVN_PROFILE} -DskipTests 
RUN ls /app

FROM tomcat:10.1.17-jdk17
COPY --from=build /app/backend-prod/target/BackendApplication.war /usr/local/tomcat/webapps/backend-server.war
RUN sed -i 's/port="8080"/port="8075"/' /usr/local/tomcat/conf/server.xml
EXPOSE 8075
CMD ["catalina.sh", "run"]


