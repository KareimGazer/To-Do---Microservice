FROM node:20 AS builder

WORKDIR /usr/src/app

ENV VITE_BACKEND_URL="http://localhost:3000/"

COPY . .

RUN npm install

RUN npm run build

FROM nginx

COPY --from=builder /usr/src/app/dist /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]