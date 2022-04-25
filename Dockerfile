FROM node:18
WORKDIR /usr/src/app

COPY package*.json ./
RUN npm ci --production

ENV USER=robot \
    PASSWORD=robot

COPY . .
EXPOSE 3000

CMD [ "npm", "start" ]
