# Alpine Linux is much smaller than most distribution base images
FROM node:alpine

# Creating and setting app directory
WORKDIR /app

# Copying package.json, package-lock.json or yarn.lock
COPY package*.json .
COPY yarn.lock .

# Installing dependencies
RUN yarn install

# Copying source files
COPY . /app

# Building app
RUN yarn build

# Expose port 3000
EXPOSE 3000

# Running the app, when deploying don't forget to change to 'start'
CMD ["yarn", "dev"]
