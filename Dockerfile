# Use the official Nginx image as the base image
FROM nginx:latest

# Remove the default Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy your custom Nginx configuration file to the container
COPY nginx.conf /etc/nginx/conf.d/

# Expose ports
EXPOSE 80

EXPOSE 443

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]