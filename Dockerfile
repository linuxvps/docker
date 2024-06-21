FROM openjdk:21-jdk

COPY target/ target/

WORKDIR target/

CMD  ["java","-jar","learn-0.0.1-SNAPSHOT.jar"]