# Use node alpine as it's a small node image
FROM node:alpine

# Create the directory on the node image
# where our Next.js app will live
RUN mkdir -p /app

# Set /app as the working directory
WORKDIR /app

# Copying package.json, package-lock.json or yarn.lock
COPY package*.json yarn.lock .

# Install dependencies in /app
RUN yarn install --frozen-lockfile

# Copy the rest of our Next.js folder into /app
COPY . /app

# Building app
RUN yarn build

# Ensure port 3000 is accessible to our system
EXPOSE 3000

# Running the app, when deploying don't forget to change to 'start'
CMD ["yarn", "dev"]
