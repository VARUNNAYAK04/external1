FROM node:14

# Set the working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN yarn install --production

# Copy the rest of the application files
COPY . .

# Expose the application port
EXPOSE 3000

# Command to run the application
CMD ["node", "app.js"]
