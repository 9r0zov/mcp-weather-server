# MCP Weather Server

## Description
MCP Weather Server is a Spring Boot application providing an API for working with weather data. The project uses Spring AI and integrates with MCP Server for advanced data processing capabilities.

## Requirements
- Java 21
- Gradle
- Docker (optional, for containerization)

## Build

1. Clone the repository:
   ```sh
   git clone <repo-url>
   cd mcp-weather-server
   ```
2. Build the project with Gradle:
   ```sh
   ./gradlew build
   ```

## Run

### Using Gradle
```sh
./gradlew bootRun
```

### Using Docker
1. Build the Docker image:
   ```sh
   docker build -t mcp-weather-server .
   ```
2. Run the container:
   ```sh
   docker run -p 8080:8080 mcp-weather-server
   ```

### Using Docker Compose
```sh
docker-compose up --build
```

## Configuration

Main configuration parameters are set in `src/main/resources/application.yml`.

## Testing

To run tests:
```sh
./gradlew test
```

## API

After starting, the application will be available at: [http://localhost:8080](http://localhost:8080)

## Monitoring

Spring Boot Actuator is enabled for monitoring and management. Endpoints are available at `/actuator`.
