# Start with a lightweight base image
FROM nginx:alpine

# Install nginx and required dependencies
RUN apt-get update && apt-get install -y \
    nginx \
    && rm -rf /var/lib/apt/lists/*

# Copy your frontend source code
COPY . /usr/share/nginx/html/

# Copy nginx configuration
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

# Create required directories and set permissions
RUN mkdir -p /var/log/nginx \
    && mkdir -p /var/cache/nginx \
    && chown -R nginx:nginx /var/log/nginx \
    && chown -R nginx:nginx /var/cache/nginx \
    && chown -R nginx:nginx /usr/share/nginx/html

# Configure nginx to run on port 8300
RUN sed -i 's/listen\s*80;/listen 8300;/g' /etc/nginx/conf.d/default.conf

# Expose port 8300
EXPOSE 8300

# Start nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
