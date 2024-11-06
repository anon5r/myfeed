FROM node:lts-alpine

# Yarn version
ENV YARN_VERSION 3.6
EXPOSE 3000

# Working on /app
WORKDIR /app

COPY package.json yarn.lock .env tsconfig.json LICENSE scripts/ src/ ./

RUN yarn install

CMD ["yarn" , "start"]
