FROM alpine:latest
ADD HelloWorld.class bin/com/docker/hello/
RUN apk --update add openjdk8-jre
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "HelloWorld"]
