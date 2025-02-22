FROM node:22.13.0

RUN apt-get update && apt-get install -qq -y --no-install-recommends

ENV INSTALL_PATH /reveal.js

RUN mkdir -p $INSTALL_PATH

WORKDIR $INSTALL_PATH

COPY package*.json ./

RUN npm i

COPY . .