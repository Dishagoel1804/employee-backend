# Step 1: Use an official OpenJDK 17 lightweight runtime environment as our base image
FROM eclipse-temurin:21-jdk-alpine

# Step 2: Create and set the folder inside the container where our app will live
WORKDIR /app

# Step 3: Copy the compiled .jar file from your local 'target' folder into the container and rename it to 'app.jar'
COPY target/*.jar app.jar

# Step 4: Tell the container the exact command to run when it turns on
ENTRYPOINT ["java", "-jar", "app.jar"]