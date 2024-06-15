FROM kestra/kestra:latest

# Copy configuration files
COPY config /etc/kestra/

# Run the Kestra application with the configuration
CMD ["java", "-jar", "/app/kestra.jar", "--config", "/etc/kestra/config.yml"]
