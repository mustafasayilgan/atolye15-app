FROM node:17.5.0-buster-slim

WORKDIR /app

COPY ./package.json ./

RUN yarn install

COPY . .

RUN yarn run build

EXPOSE 3000

CMD ["yarn", "start:prod"]
