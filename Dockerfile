# Start from a small Node.js image
FROM node:20-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package files first (helps with caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app
COPY . .

# Tell Docker the app listens on port 3000
EXPOSE 3000

# Command to run when the container starts
CMD ["node", "server.js"]
