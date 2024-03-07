
# Use Node.js version 20 as the base image
FROM node:20

# Set the working directory inside the container
WORKDIR /

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose port 4000 to the outside world
EXPOSE 4000

# Command to run the application
CMD ["node", "index.js"]
