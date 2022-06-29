# Dockerized MLFlow Server

A simple dockerized MLFlow + DB combo to deploy an MLFlow tracking + artifact storage server anywhere you need.

## How to use
1. Create an .env file by copying the example and filling the values
2. Run the server by using `docker compose up -d`
3. Use url "localhost:${MLFLOW_PORT}" to connect to the dashboard. Default is "localhost:5000"
4. The same url is also used as the tracking server.

Use `docker compose stop` to temporarily stop the containers. When using stop, you only need to `docker compose start` to run the container again.

Use `docker compose down` to remove the containers altogether. 

Use `docker compose up -d` again to restart the system if you made changes to docker-compose.yml file. Everytime you made changes to the dockerfile use `docker compose build` first before running `docker compose up -d`.