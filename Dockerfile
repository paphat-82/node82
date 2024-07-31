# Use an existing image as a base
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json for dependency management
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application code into the container
COPY . .

# Expose the port the application will run on
EXPOSE 3000

# Define the command to run the application
CMD ["node", "app.js"]
