# Use Red Hat UBI 9 as base image
FROM registry.access.redhat.com/ubi9/ubi

# Install Node.js and npm
RUN microdnf install -y nodejs npm && microdnf clean all

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