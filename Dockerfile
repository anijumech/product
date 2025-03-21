# Use an official lightweight Apache HTTP Server image
FROM httpd:alpine

# Set the maintainer label
LABEL maintainer="anbanerj@example.com"

# Copy the static HTML page into the Apache's default web directory
COPY ./index.html /usr/local/apache2/htdocs/

# Expose port 80 (default for Apache)
EXPOSE 80

# Start Apache in the foreground (required for Docker containers)
CMD ["httpd-foreground"]
