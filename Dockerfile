# Dockerfile to containerize a static web application using Nginx

# Lightweight base image for efficient container size
FROM nginx:alpine

# Copy application files to Nginx web root directory
COPY index.html /usr/share/nginx/html

# Expose HTTP port
EXPOSE 80

