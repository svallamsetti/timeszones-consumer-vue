# Timezones-consumer Vue App
> This Vue App consumes timezones API written in Flask [timeZonesAPI](https://github.com/svallamsetti/timezones-api)

# Requirements
   * [Docker](https://docs.docker.com/get-docker/)
   * [Docker Compose](https://docs.docker.com/compose/install/)

## Project setup
Once docker and docker compose are installed follow the below steps to spin this app.

**Steps:**

1. clone this repo `git clone https://github.com/svallamsetti/timeszones-consumer-vue.git`
2. `cd timezones-consumer-vue`
3. `docker-compose up`
> This step will take some time to download the image used in Dockerfile. The Dockerfile will take care of installing all the required dependencies.
4. The app can be accessed by visiting http://127.0.0.1:8081
> If the above port is occupied you can change the port by creating .env file in the project root directory and by setting the port to the variable HOST_PORT. You can refer to .env-example. A `docker-compose restart` is required for the changes to be affected.
