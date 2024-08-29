# To Do (Single-Page App) - Microservice

Basic todo application demonstrating the microservice architecutre by deploying the frontend, the backend, the database, and cache all as its own service while providing an Nginx proxy-server as a defualt gateway to the app.

## Architecture 🛠️

The client first communicates with the Nginx proxy server to get initial single page data. The proxy-server acts as an CDN.
![Frontend Request](./img/nginx-setup.png)

Then the app starts fetching data from the backend (express-app)

![Frontend Request](./img/nginx-setup2.png)

The backend uses MongoDB as a permanenat store. data are presisted locally using docker volumes. Redis DB is used for caching.

![Frontend Request](./img/backend_drawio.png)

The containers use the default network bridge for communication with DNS lookups provided by docker.

[BusyBox](https://www.busybox.net/) is provided as a service to debug the containers network internally.

## Getting Started (Docker 🐋)

```bash
docker compose -f ./docker-compose.dev.yml up
```

## File Structure

```
To Do (Single-Page App):  Microservice
├── todo-frontend                frontend-app
├── todo-backend                 backend server contsaing express, Mongo, Redis
    ├── utils                    Databases configurations
    ├── mongo                    Mongo DB - NoSQL for simplicity
    ├── redis                    Redis DB - used for caching
├── .gitignore                   ignoreing data volumes from VCS
├── docker-compose.dev.yml       development deployment composer file
├── nginx.dev.conf               Nginx configuration for development deployment
└── README.md                    main documentation
```
