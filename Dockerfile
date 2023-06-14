# Use an Nginx base image
FROM nginx:latest

# Copy static website files to Nginx's HTML directory
COPY pipeline /usr/share/nginx/html

# Expose port 80 for Nginx
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]

