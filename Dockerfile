# Use a base image with Java installed
FROM openjdk:11

# Set the working directory in the container
WORKDIR /app

# Copy the Maven artifacts and executable JAR to the container
COPY target/.jar /app/.jar

# Command to run the application
CMD ["java", "-jar", ".jar"]


