# Use Alpine as base
# FROM alpine:latest
FROM registry.access.redhat.com/ubi9/ubi

# Install Node.js and npm
RUN apk add --no-cache nodejs npm

# Set working directory
WORKDIR /app

# Copy dependencies and install
COPY package*.json ./
RUN npm install

# Copy the rest of the application
COPY . .

# Expose port and start the app
EXPOSE 3000
CMD ["npm", "start"]
