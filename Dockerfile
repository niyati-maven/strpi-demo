# Base image
FROM node:20.18.1-alpine3.20

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package.json ./

# Install dependencies
RUN npm install

# Copy the application code
COPY . .

# Expose the Strapi default port
EXPOSE 1337

# Start Strapi
CMD ["npm", "start"]
