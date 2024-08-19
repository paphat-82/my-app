# Use the official Node.js image to build the React app
FROM node:18 AS build

# Set the working directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy the source code
COPY . .

# Build the React app
RUN npm run build

# Use NGINX to serve the built app
FROM nginx:alpine

# Copy the build output to the NGINX folder
COPY --from=build /app/build /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
