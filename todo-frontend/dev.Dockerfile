FROM node:20

WORKDIR /usr/src/app

ENV VITE_BACKEND_URL="http://localhost:8080/api/"

COPY . .

RUN npm install

CMD ["npm", "run", "dev", "--", "--host"]