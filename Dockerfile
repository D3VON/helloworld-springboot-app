# Use the official OpenJDK base image from Docker Hub
FROM openjdk:21-jdk

# Set the working directory
WORKDIR /app

# I want to rely on artifacts, not have maven build when the image is built.
# Copy the JAR file into the container
COPY target/helloworld-0.0.1-SNAPSHOT.jar app.jar

# Expose the port the application will run on
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
