# Use official Tomcat image
FROM tomcat:9.0

# Remove default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into the webapps folder
COPY target/college-management-system.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080 (Render expects this)
EXPOSE 8080

# Start Tomcat when the container runs
CMD ["catalina.sh", "run"]
