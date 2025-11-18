# 2.04-MongoDB-queries

## 📄 Description

This repository contains a MongoDB database named `restaurants` with a pre-defined collection and sample data.  
Docker Compose is used to set up and run the database easily, allowing anyone to start it 
**without installing MongoDB locally.**

The database is initialized using an `init.sh` script, which automatically populates the `restaurants` collection 
from a `restaurants.json` file.

Additionally, there is a `queries.js` file that contains **32 MongoDB queries** to interact with and explore 
the `restaurants` database.

## 💻 Technologies used

- MongoDB 8.x
- Mongo Express
- Docker 28.x
- Docker Compose 2.x
- IntelliJ IDEA

## 📋 Requirements

- Docker installed and running
- Docker Compose installed (comes with Docker Desktop)
- IDE capable of handling projects (e.g., IntelliJ IDEA)
- Optional: Mongo Express to explore the databases in the browser

## 🛠️ Installation

1. Clone the repository:

```bash
git clone https://github.com/ccasro/2.04-MongoDB-queries.git
```

2. Open the project in your IDE (e.g., IntelliJ IDEA)
3. Ensure the init-mongo folder contains the init.sh file.
4. Create a .env file in the project root (next to docker-compose.yml) with the following template:
```env
MONGO_INITDB_ROOT_USERNAME=admin
MONGO_INITDB_ROOT_PASSWORD=secret
ME_BASICAUTH_USERNAME=user
ME_BASICAUTH_PASSWORD=secret
ME_CONFIG_MONGODB_SERVER=mongodb
MONGO_INITDB_DATABASE=restaurants

HOST_MONGO_PORT=27017
HOST_MONGOEXPRESS_PORT=8081
```
5. Make sure Docker Desktop is running and the Docker daemon is active.

## ▶️ Execution

1. Open a terminal in the project root folder
2. Run Docker Compose to start MongoDB and Mongo Express:
```bash
docker compose up -d
```
3. Docker will:
    - Create containers for MongoDB and Mongo Express
    - Initialize the databases and collections automatically using init.sh and restaurants.json
    - Expose MongoDB ports (default 27017) and Mongo Express (default 8081)

4. Access the databases:
    - Mongo Express http://localhost:8081
        - Server: mongodb
        - User: user
        - Password: as defined in your .env file
        - Databases: restaurants
5. If you want to use mongosh to test the queries you can use the following command:
```bash
docker exec -it mongodb  mongosh -u admin -p secret --authenticationDatabase admin
```
6. To stop the containers:
```bash
docker compose down -v
```
## 🌐 Deployment

No production deployment is required. The setup is intended for local development and testing purposes using Docker

## 🤝 Contributions

- Use the main branch for development.
- Make small, frequent commits following Conventional Commits.
- Do not commit sensitive credentials or compiled files
- To propose improvements, create a branch and open a pull request.

