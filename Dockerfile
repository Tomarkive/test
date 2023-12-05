# Use an official lightweight Node image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the local index.html file to the working directory
COPY index.html .

# Expose port 3000
EXPOSE 3000

# Command to run your application
CMD ["npm", "start"]
