# Specify a base image
FROM node:alpine
# Set a working directory for where relative paths should start
WORKDIR /usr/app
# Install some dependencies
COPY ./ ./
RUN npm install
# Default command
CMD ["npm", "start"]