FROM maven:3.5-jdk-8-alpine
WORKDIR /app
ADD pom.xml /app/pom.xml
ADD /src /app/src
RUN mvn clean package

FROM frolvlad/alpine-oraclejdk8:8.171.11-full
WORKDIR /app
COPY --from=0 /app/target/rexumee.jar /app
CMD ["java","-jar","rexumee.jar"]
