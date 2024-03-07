# Stage 1: Build stage
FROM node:latest AS build

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Build the application (if needed)
RUN npm run build

# Stage 2: Production image
FROM node:latest

# Set the working directory inside the container
WORKDIR /app

# Copy built files and dependencies from the previous stage
COPY --from=build /app .

# Expose port 4000 to the outside world
EXPOSE 4000

# Set environment variable (if needed)
# ENV NODE_ENV=production

# Command to run the application
CMD ["node", "index.js"]
