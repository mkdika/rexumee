# Rexumee
[![License: Apache-2.0](https://img.shields.io/badge/license-Apache--2.0-green.svg)](/LICENSE)
[![Build Status](https://travis-ci.org/mkdika/rexumee.svg?branch=master)](https://travis-ci.org/mkdika/rexumee)

A simple one page website for professional resume. 

**Rexumee** is using a minimalize Spring Boot stack with embedded web server, and a YAML file for the resume content. All you need is download (clone) the source code, build and test within Localhost environment or build the Docker container for production deployment. 



## Tech Stack and Library

- Java 8
- [Maven](https://maven.apache.org/index.html), as build system and dependency management.
- [Spring Boot 1.5.x](https://projects.spring.io/spring-boot/), as main web framework and project bootstrapping.
- [Apache Freemarker](https://freemarker.apache.org/), html template engine.
- [Project Lombok](https://projectlombok.org/), a library to help minimize code boilerplate.
- [Undertow Web Server](http://undertow.io/), lightweight and embedded web application server.
- [Docker](https://www.docker.com/), container base deployment.
- [startbootstrap-resume](https://github.com/BlackrockDigital/startbootstrap-resume), Bootstrap template.



## Edit Resume Content

To edit resume content with your preferences, open the file: `src/main/resources/application.yml` , then edit under the `resume` sections. All the content structure are using [YAML](http://yaml.org/) markup language convention. Check the customable fields from example or from the [online preview](https://www.mkdika.com).



## Build and Running the Application within Localhost

#### Build

```console
mvnw clean package
```


#### Running Application

```console
mvnw spring-boot:run
```

Application will run on port `8080`, access the URL  [http://localhost:8080](http://localhost:8080) from web browser.

#### Running Application (alternative)

There is alternative in order to run the application. After build, go to `target` folder, make sure there is `rexumee.jar` file. Then, from that folder run:

```console
java -jar rexumee.jar
```



## Docker Deployment

Make sure you have installed Docker & Docker Compose prior to deployment. 

- Find out the documentation about Docker Installation at [here](https://docs.docker.com/install/).
- How to install Docker-Compose [here](https://docs.docker.com/compose/install/).

From the project root folder, run:

```console
docker-compose up -d
```

Check whether the deployment run properly:

```console
docker ps
```

And you can access the webpage from port `80`.



## Online Demo

For online demo and preview, please visit [here](https://www.mkdika.com/).



## Copyright and License

Copyright 2018 Maikel Chandika (mkdika@gmail.com). Code released under the Apache License, Version 2.0. See [LICENSE](/LICENSE) file.
