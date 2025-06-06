# Use Nginx to serve static HTML/CSS/JS files
FROM nginx:alpine

# Remove default nginx content and replace with your clock files
RUN rm -rf /usr/share/nginx/html/*

# Copy all project files to nginx's public folder
COPY . /usr/share/nginx/html

# Expose port 80 (default nginx port)
EXPOSE 80

# Start nginx (no CMD needed since nginx base image handles it)
