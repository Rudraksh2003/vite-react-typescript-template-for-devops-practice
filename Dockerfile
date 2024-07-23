# Use the official Node.js image as the base image with a compatible version
FROM node:16

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the working directory
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

EXPOSE 5173

# Start the application
CMD ["npm", "run", "dev"]


