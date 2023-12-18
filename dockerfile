FROM node:10

COPY package.json /usr/src/app/

WORKDIR /usr/src/app

RUN npm install

COPY package*.json ./

RUN npm ci --only=production

COPY . .

EXPOSE 5000
CMD [ "npm", "start" ]
