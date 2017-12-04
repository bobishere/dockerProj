FROM java
VOLUME /tmp
ADD demo-0.0.1-SNAPSHOT.jar
RUN bash -c 'touch /demo.jar'
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /demo.jar" ]
