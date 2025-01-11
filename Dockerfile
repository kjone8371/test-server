FROM ubuntu:latest
LABEL authors="jeongwonkim"

ENTRYPOINT ["top", "-b"]


FROM openjdk:17-jdk-slim
CMD ["./mvnw", "clean", "package"]
ARG JAR_FILE=build/libs/demo-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]