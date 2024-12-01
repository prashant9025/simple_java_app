# base image
FROM openjdk:17-jdk-alpine

# Create a folder where app code will be stored.
WORKDIR /app

# Copy source code from your HOST machine into the container
COPY src/Main.java /app/Main.java

#Compile the Java(application) code 
RUN javac Main.java

#Run the java application when the container starts
CMD ["java","Main"]



