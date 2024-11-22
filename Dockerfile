# Step 1: Use a lightweight Java image as the base
FROM openjdk:17-jdk-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the application jar file into the container
COPY build/libs/*.jar app.jar

# Step 4: Expose the application port (default Spring Boot port is 8080)
EXPOSE 8080

# Step 5: Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
