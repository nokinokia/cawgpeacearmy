# Use official Nginx image
FROM nginx:alpine

# Remove the default nginx.conf if needed (optional)
# RUN rm /etc/nginx/conf.d/default.conf

# Copy your index.html to the default html directory
COPY index.html /usr/share/nginx/html/index.html

# Expose the default Nginx port
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]