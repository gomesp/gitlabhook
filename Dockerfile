FROM node:boron

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# COPY package.json .
# For npm@5 or later, copy package-lock.json as well
COPY myapp/package.json myapp/package-lock.json ./

RUN npm install

# Bundle app source
COPY myapp/ .

EXPOSE 3000
CMD [ "npm", "start" ]