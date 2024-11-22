# Use an official Node.js image as a parent image
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if available) to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Ensure babel is executable
RUN chmod +x node_modules/.bin/babel

# Expose the port your app runs on (assuming it's 3000, adjust as needed)
EXPOSE 3002

# Run the build script to transpile your code (you could adjust this to match your exact build process)
RUN npm run build

# Set the default command to run your app (adjust this if your app runs differently)
CMD ["npm", "start"]
