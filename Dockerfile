FROM maven:3-jdk-8-alpine
COPY target/*.jar /main.jar
COPY jacoco/*.jar /root/
EXPOSE 8899
ENTRYPOINT ["java","-jar","/main.jar"]