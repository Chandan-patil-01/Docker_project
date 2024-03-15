# Base image for Node.js environment
FROM node:18-alpine

# Working directory within the container
WORKDIR /app

# Copy the project files
COPY . .

# Install dependencies (assuming package.json exists)
RUN npm install

# Expose port (optional, if your app listens on a specific port)
# EXPOSE 8080

# Start command (replace 'npm start' with your actual command if different)
CMD [ "npm", "start" ]
