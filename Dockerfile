# Use official Tomcat base image
FROM tomcat:9.0-jdk17

# Remove default apps (optional)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file built by Maven
COPY target/jpetstore.war /usr/local/tomcat/webapps/ROOT.war

# Expose port (optional if already done in Jenkins/docker run)
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
