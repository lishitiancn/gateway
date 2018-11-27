# base image
FROM java:8

# MAINTAINER
MAINTAINER lishitian906@pingan.com.cn

ADD target/gateway-0.0.1-SNAPSHOT.jar /usr/local/

# change dir to /usr/local/
WORKDIR /usr/local/f

# execute command to compile nginx
RUN java -jar gateway-0.0.1-SNAPSHOT.jar

EXPOSE 8080