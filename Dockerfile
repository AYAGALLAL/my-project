FROM openjdk:8-jre-alpine

# Expose the port the app listens on
EXPOSE 8080

# Build argument to receive the JAR file path!!!!!!
ARG JAR_FILE
COPY ${JAR_FILE} /usr/app/

WORKDIR /usr/app

ENTRYPOINT ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]
