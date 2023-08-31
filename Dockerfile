FROM node:18-alpine

WORKDIR /opt

COPY ["package*.json", "./"]

RUN npm install 

COPY . .

CMD npx turbo serve
