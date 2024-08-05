# Use an official Java runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the WAR file from the host to the container
COPY target/NETFLIX-1.2.2.war /app/NETFLIX-1.2.2.war

# Expose port 80 for the application
EXPOSE 80

# Run the WAR file with the Java runtime
ENTRYPOINT ["java", "-jar", "NETFLIX-1.2.2.war"]
