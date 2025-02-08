FROM nginx:alpine

# Copy your frontend source code
COPY . /usr/share/nginx/html/

# Copy nginx configuration
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

# Set permissions (important!)
RUN chown -R nginx:nginx /usr/share/nginx/html

# Configure nginx to run on port 8300 (if needed.  Better done in nginx.conf)
# This is usually better handled in your nginx.conf directly
# RUN sed -i 's/listen\s*80;/listen 8300;/g' /etc/nginx/conf.d/default.conf

# Expose port 8300
EXPOSE 8300

# Nginx already runs in the foreground in the alpine image.
# CMD is usually not needed, or if you do need it, use this:
CMD ["nginx", "-g", "daemon off;"]
