FROM openjdk:latest
COPY target/SpringBootDockerizedExample-0.0.1-SNAPSHOT.war SpringBootDockerizedExample-0.0.1-SNAPSHOT.war
ENTRYPOINT ["java","-jar","/SpringBootDockerizedExample-0.0.1-SNAPSHOT.war"]