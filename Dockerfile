#FROM openjdk:8-jdk-alpine
#FROM eclipse-temurin:11.0.19_7-jdk-alpine
FROM tomcat:jre11-temurin-jammy
WORKDIR /app
COPY ./target/*.jar app.jar
CMD ["java", "-jar", "app.jar"]
