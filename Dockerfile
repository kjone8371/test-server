FROM ubuntu:latest
LABEL authors="jeongwonkim"

ENTRYPOINT ["top", "-b"]


#FROM openjdk:17-jdk-slim
#ARG JAR_FILE=build/libs/demo-0.0.1-SNAPSHOT.jar
#COPY ${JAR_FILE} app.jar
#ENTRYPOINT ["java", "-jar", "app.jar"]



FROM openjdk:17-jdk-slim
VOLUME /tmp
EXPOSE 8080
#COPY target/demo-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]