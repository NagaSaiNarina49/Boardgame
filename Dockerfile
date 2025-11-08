# ===== Runtime Stage Only =====
FROM eclipse-temurin:17-jre-alpine

WORKDIR /app

# Copy the pre-built artifact from the pipeline workspace
# (Jenkins will have produced it in 'target/' or similar folder)
COPY target/*.jar app.jar

# Expose the app port
EXPOSE 8080

# Run the jar
ENTRYPOINT ["java", "-jar", "app.jar"]
