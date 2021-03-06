FROM alpine:latest
ADD /bin/com/docker/hello/HelloWorld.class HelloWorld
RUN apk --update add openjdk8-jre
CMD java /bin/com/docker/hello/HelloWorld
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "HelloWorld"]
