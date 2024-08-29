FROM node:20

WORKDIR /usr/src/app

COPY . .

# ENV MONGO_URL='mongodb://root:example@localhost:3456/the_database'
# ENV REDIS_URL="redis://localhost:6379"

RUN npm install

CMD [ "npm", "start"]
