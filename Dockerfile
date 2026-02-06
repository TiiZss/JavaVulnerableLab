# Stage 1: Build Stage
FROM maven:3-jdk-8 as build

WORKDIR /app

# Copy the source code into the Docker image
COPY . .

# Build the project
RUN mvn clean package -DskipTests

# Stage 2: Runtime Stage
FROM tomcat:9.0-jdk8

# Remove default webapps to keep it clean (optional but good practice)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR file built in the previous stage to the root context or specific context
# Renaming to ROOT.war if we want it at root, but instructions suggest /JavaVulnerableLab context
COPY --from=build /app/target/JavaVulnerableLab.war /usr/local/tomcat/webapps/JavaVulnerableLab.war

# Copy the pre-prepared tomcat-users.xml to set up user roles
COPY default-tomcat.xml /usr/local/tomcat/conf/tomcat-users.xml

# Expose port
EXPOSE 8080

# CMD to start Tomcat
CMD ["catalina.sh", "run"]
