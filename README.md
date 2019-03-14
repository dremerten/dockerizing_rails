# Docker/Rails_app Chatterbox
### Dockerized by Andre Merten

## Make sure you have docker installed and running: 

For Mac: go here ---> https://hub.docker.com/editions/community/docker-ce-desktop-mac

For Linux Ubuntu 18.04: got here and follow the steps ---> 
https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-18-04

For Windows10: go here --> https://hub.docker.com/editions/community/docker-ce-desktop-windows

## Make sure you have Postgres installed and running:

https://www.enterprisedb.com/downloads/postgres-postgresql-downloads


### to get the containers up and running change into scripts directory and run
```
scripts/setup-env.sh
```

### To check the current running containers
```
docker container ps
```
### to enter the container run:
```
docker exec -it <name_of_container> /bin/zsh
```
### Ensure that your server is running by navigating to "localhost:3000"

## Running the tests
```
docker-compose run app rspec
```
## To stop and kill the running containers(make sure to stop first)
```
docker stop $(docker ps -a -q)
docker kill $(docker ps -a -q)
```

## In order to copy a file from a container to the host, you can use the command
```
docker cp <containerId>:/file/path/within/container /host/path/target
```

* My goal is to get this entire project into a self contained docker environment, where anyone can run the Dockerfile and have access to the app on their local machine.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# chatterbox
