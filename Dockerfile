# Use an official Node.js runtime as a parent image
FROM node:lts-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json to the working directory
COPY myapp/. ./

# Install application dependencies
RUN npm install

# Expose a port (the same one your app is listening to)
EXPOSE 3000

# Define the command to run your application
CMD [ "node", "app.js" ]
