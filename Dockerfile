# Use the official Maven image to create a build artifact.
# This is the build stage.
FROM maven:3.8.6-openjdk-17 AS build
COPY pom.xml /learn/
COPY src /learn/src/
WORKDIR /learn
RUN mvn clean package -DskipTests

# Use the official OpenJDK image for a lean production stage.
FROM openjdk:17-jdk-slim
COPY --from=build /learn/target/learn-0.0.1-SNAPSHOT.jar /app/my-spring-boot-app.jar
ENTRYPOINT ["java","-jar","/app/my-spring-boot-app.jar"]