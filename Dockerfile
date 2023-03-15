FROM node:latest
RUN apt-get update -y && \
  apt-get -y install default-jre-headless

WORKDIR /app
COPY package* .
RUN npm install
