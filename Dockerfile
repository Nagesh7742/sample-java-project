# Use a smaller base image for the final application image
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file from the build stage to the final image
COPY --from=build /app/target/sample-java-project-1.0-SNAPSHOT.jar .

# Set the default command to run the application
CMD ["java", "-jar", "sample-java-project-1.0-SNAPSHOT.jar"]
