# Use Java 17 (required for Spring Boot)
FROM eclipse-temurin:17-jdk-jammy

# Set working directory inside container
WORKDIR /app

# Copy project files
COPY . .

# Build the Spring Boot application
RUN ./mvnw clean package -DskipTests

# Expose port (Render uses PORT env variable)
EXPOSE 8080

# Run the jar file
CMD ["java", "-jar", "target/*.jar"]
