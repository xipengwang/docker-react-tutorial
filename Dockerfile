FROM node:16
WORKDIR /usr/src/app

COPY package*.json ./
RUN yarn install
COPY webpack.config.js ./node_modules/react-scripts/config/webpack.config.js

ENV USER=robot \
    PASSWORD=robot

COPY . .
EXPOSE 3000

CMD [ "npm", "start" ]
