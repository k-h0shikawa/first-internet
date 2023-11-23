FROM amazoncorretto:17 AS build
COPY ./ /home/app
WORKDIR /home/app
RUN ./gradlew build

FROM amazoncorretto:17-alpine
COPY --from=build /home/app/build/libs/FirstInternet-0.0.1-SNAPSHOT.jar /usr/local/lib/FirstInternet.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","-Dfile.encoding=UTF-8","/usr/local/lib/FirstInternet.jar"]
