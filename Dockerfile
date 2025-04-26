# Use an official Node.js runtime as the base image
FROM node:16-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the app's source code
COPY . .

# Build the app for production
RUN npm run build

# Expose the port the app will run on
EXPOSE 3000

# Serve the app with a static server (using 'serve' package)
RUN npm install -g serve

# Start the app
CMD ["serve", "-s", "build", "-l", "3000"]
