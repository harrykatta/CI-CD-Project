#FROM openjdk:8-jdk-alpine
FROM openjdk:22-ea-jdk-slim-bullseye
WORKDIR /app
COPY ./target/*.jar app.jar
CMD ["java", "-jar", "app.jar"]
