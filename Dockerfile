FROM alpine/git
WORKDIR /app
RUN git clone https://github.com/mkdika/rexumee.git

FROM maven:3.5-jdk-8-alpine
WORKDIR /app
COPY --from=0 /app/rexumee /app
RUN mvn clean package -DskipTests

FROM frolvlad/alpine-oraclejdk8:8.171.11-full
WORKDIR /app
COPY --from=1 /app/target/rexumee.jar /app
CMD ["java","-jar","rexumee.jar"]
