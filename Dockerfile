FROM ubuntu:latest
LABEL authors="jeongwonkim"

ENTRYPOINT ["top", "-b"]


FROM openjdk:17-alpine
VOLUME /tmp
EXPOSE 8080

COPY target/build/libs/demo-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]