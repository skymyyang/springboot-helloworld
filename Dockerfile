FROM iqimei/openjre8-alpine:8.252.09


RUN mkdir -p /data/springboot-helloworld
COPY target/helloworld-0.0.1-SNAPSHOT.jar /data/springboot-helloworld
WORKDIR /data/springboot-helloworld
EXPOSE 8080
CMD ["java", "-jar", "/data/springboot-helloworld/helloworld-0.0.1-SNAPSHOT.jar"]