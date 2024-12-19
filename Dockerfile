# Use Node.js LTS as the base image
FROM node:18

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy only the package.json and package-lock.json for dependency installation
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the project files
COPY . .

# Expose the default Nuxt dev server port
EXPOSE 3000

# Command to run the development server
CMD ["npm", "run", "dev"]