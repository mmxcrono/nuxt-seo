# Build Stage
FROM node:18 as build

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

# Production Stage
FROM node:18

WORKDIR /usr/src/app

COPY --from=build /usr/src/app ./

EXPOSE 3000

CMD ["npm", "run", "start"]
