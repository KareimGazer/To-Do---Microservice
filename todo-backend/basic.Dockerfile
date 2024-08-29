FROM node:20

WORKDIR /usr/src/app

COPY --chown=node:node . .

# ENV MONGO_URL='mongodb://root:example@localhost:3456/the_database'
# ENV REDIS_URL="redis://localhost:6379"

RUN npm ci

USER node

CMD [ "npm", "start"]
