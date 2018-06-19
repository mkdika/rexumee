FROM alpine/git
WORKDIR /app
RUN mkdir /root/.ssh/
ADD id_rsa /root/.ssh/id_rsa
RUN chmod 600 /root/.ssh/id_rsa
RUN touch /root/.ssh/known_hosts
RUN ssh-keyscan gitlab.com >> /root/.ssh/known_hosts
RUN git clone git@gitlab.com:mkdika/spring-boot-resume.git
RUN rm /root/.ssh/id_rsa

FROM maven:3.5-jdk-8-alpine
WORKDIR /app
COPY --from=0 /app/spring-boot-resume /app
RUN mvn clean package

FROM frolvlad/alpine-oraclejdk8:8.171.11-full
WORKDIR /app
COPY --from=1 /app/target/app-resume.jar /app
CMD ["java","-jar","app-resume.jar"]
