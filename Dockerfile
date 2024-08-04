# Use an existing image as a base
FROM node:14

# Set the working directory
WORKDIR /usr/src/app

# Update package lists and install build-essential without recommended packages
RUN apt-get update && \
    apt-get install -y --no-install-recommends build-essential && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
    
# Copy the app.js file
COPY app.js .

# Expose the port that the app listens on
EXPOSE 3000

# Define the command to run the app
CMD ["node", "app.js"]
