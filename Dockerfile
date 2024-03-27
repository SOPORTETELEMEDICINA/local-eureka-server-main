# Dockerfile de local-eureka-server
FROM openjdk:8-jdk-alpine
ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk
VOLUME /tmp
VOLUME /logs
ADD target/local-eureka-server-1.0-SNAPSHOT.jar app.jar
#ENV JAVA_OPTS="-Xmx512m -Duser.timezone=America/Mexico_City"
ENV JAVA_OPTS="-Xmx2048m -Xss128m"
#ENV JAVA_OPTS="-Duser.timezone=America/Mexico_City -Xmx2048m -Xss1024m"
ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar
