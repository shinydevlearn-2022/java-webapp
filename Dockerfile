# Use the official Tomcat base image
FROM tomcat:9-jdk17-openjdk

# Copy the WAR file into the Tomcat webapps directory
COPY target/java-webapplication.war /opt/apache-tomcat-9.0.99/webapps/

# Expose port 8080
EXPOSE 8090

# Start Tomcat server
CMD ["catalina.sh", "run"]
