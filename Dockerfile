FROM node:boron

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install

ENV TOKEN=token
# Bundle app source
COPY . /usr/src/app


CMD ["node", "./Ghost[PB].js"]
