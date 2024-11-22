# Step 1: Build stage
FROM gradle:7.6-jdk17 AS builder

# Set the working directory inside the container
WORKDIR /app

# Copy Gradle configuration and source files into the container
COPY . .

# Run the Gradle bootJar task to build the application
RUN ./gradlew bootJar --no-daemon

# Step 2: Runtime stage
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the built JAR file from the builder stage
COPY --from=builder /app/build/libs/*.jar app.jar

# Expose the application's port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
