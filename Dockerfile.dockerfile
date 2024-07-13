# Use a minimal base image
FROM alpine:3.12

# Install necessary packages
RUN apk add --no-cache nginx

# Add application code
COPY hello-world.html /usr/share/nginx/html/index.html

# Create a non-root user and set permissions
RUN addgroup -S mygroup && adduser -S myuser -G mygroup
RUN chown -R myuser:mygroup /usr/share/nginx/html

# Switch to the non-root user
USER myuser

# Expose the necessary port
EXPOSE 80

# Run the application
CMD ["nginx", "-g", "daemon off;"]
