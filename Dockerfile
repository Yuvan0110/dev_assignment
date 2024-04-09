# Use the official Maven image as the base image for building the project
FROM maven:3.8.1 AS build

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the Maven project descriptor
COPY pom.xml .

# Copy the project source code
COPY src ./src

# Build the project using Maven
RUN mvn clean package

# Define a lightweight Java runtime image for running the application
FROM openjdk:11-jre-slim

# Set the working directory for the runtime image
WORKDIR /usr/app

# Copy the JAR file built in the previous stage to the runtime image
COPY --from=build /usr/src/app/target/*.jar /usr/app/app.jar

# Specify the command to run the application when the Docker container starts
ENTRYPOINT ["java","-jar","/usr/app/app.jar"]
