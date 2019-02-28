# Specify a base image
FROM node:alpine
# Set a working directory for where relative paths should start
WORKDIR /usr/app
# Copy the package file and install some dependencies
COPY ./package.json ./
RUN npm install
# Copy all the other files
COPY ./ ./
# Default command
CMD ["npm", "start"]
