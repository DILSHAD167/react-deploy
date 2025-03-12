# Base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json first
COPY package*.json ./

# Install dependencies
RUN npm install --omit=dev

# Copy the rest of the application
COPY . .

# Expose port (if required)
EXPOSE 3000

# Start the application
CMD ["npm", "start"]  # Adjust based on your app
