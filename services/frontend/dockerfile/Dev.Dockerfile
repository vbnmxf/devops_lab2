# используем базовый образ node
FROM node:24-alpine

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm install
ENV PATH /app/node_modules/.bin:$PATH

