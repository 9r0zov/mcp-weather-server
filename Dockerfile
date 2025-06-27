FROM gradle:8.7-jdk21 AS build
WORKDIR /app
COPY . .
RUN gradle bootJar --no-daemon

FROM openjdk:21-jdk-slim
WORKDIR /app
COPY --from=build /app/build/libs/mcp-weather-server-0.0.1.jar app.jar
EXPOSE 9010
ENTRYPOINT ["java", "-jar", "app.jar"]
