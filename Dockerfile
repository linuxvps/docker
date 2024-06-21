FROM openjdk:21-jdk

COPY target/ target/

WORKDIR target/

CMD  ["java","-jar","learn-0.0.1-SNAPSHOT.jar"]

# build command
#docker build -t dockertest:0.0.1 .

#find id
#docker images

# run command
#docker run -p 8080:8080 12312456
