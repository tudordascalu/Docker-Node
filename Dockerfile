# Use an official Node runtime as a parent image
FROM node:12.7.0-alpine

# Expose port
EXPOSE 80

# Set the working directory to /app
WORKDIR '/app'

# Copy package.json onto container
COPY package.json .

# Install dependencies
RUN npm install

# Copy everything onto container
COPY . .

ENTRYPOINT ["node", "server.js"]