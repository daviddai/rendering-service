FROM node:10

WORKDIR /usr/rendering-service

COPY package.json ./

RUN yarn install

ADD build ./build

EXPOSE 5000

CMD ["yarn", "start"]