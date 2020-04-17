FROM node

# FOR CI
RUN mkdir /usr/src/app

WORKDIR /usr/src/app

# FOR CI
ENV PATH /usr/src/app/node_modules/.bin:$PATH

COPY package*.json ./

RUN npm install

COPY . /usr/src/app

EXPOSE 4000
CMD [ "npm", "start"]
