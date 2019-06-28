FROM java:8-jdk-alpine

WORKDIR /usr/app

ADD *.jar  /usr/app

CMD java -jar /usr/app/*.jar
