# base image
FROM java:8

# MAINTAINER
MAINTAINER lishitian906@pingan.com.cn

ADD target/gateway-0.0.1-SNAPSHOT.jar /usr/local/

# change dir to /usr/local/
WORKDIR /usr/local/

# execute command to compile nginx
ENTRYPOINT ["java","-jar","gateway-0.0.1-SNAPSHOT.jar"]

EXPOSE 8080