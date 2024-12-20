# Build Stage
FROM node:18 as build

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

WORKDIR /usr/src/app

EXPOSE 3000