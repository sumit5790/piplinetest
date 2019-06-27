FROM java:8-jdk-alpine

WORKDIR /usr/app

ADD /root/*.jar  /usr/app

CMD java -jar /usr/app/*.jar
