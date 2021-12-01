# syntax=docker/dockerfile:1

FROM node:12.14.0
ENV NODE_ENV=production

WORKDIR /

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install

COPY . .

CMD [ "node", "main.js" ]
