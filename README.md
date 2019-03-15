# Docker/Rails_app Chatterbox
### Dockerized by Andre Merten

1) ## Make sure you have docker installed and running: 

For Mac: go here ---> https://hub.docker.com/editions/community/docker-ce-desktop-mac

For Linux Ubuntu 18.04: got here and follow the steps ---> 
https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-18-04

For Windows10: go here --> https://hub.docker.com/editions/community/docker-ce-desktop-windows

2) ## Make sure you have Postgres installed and running:

https://postgresapp.com/


3) ### To get the containers up and running change into scripts directory and execute setup-env.sh
```
$ cd scripts/

$ ./setup-env.sh
```

4) ### To check the status of current running containers
```
docker container ps
```
5) ### To enter the container run:
```
docker exec -it <container_Id> /bin/zsh
```
6) ### Ensure you are servering on localhost port 3000, open a web browser and navigate to:
```localhost:3000```

7) ### Running the tests
```
docker-compose run app rspec
```
### In order to copy a file from a container to the host, you can use the command
```
docker cp <containerId>:/file/path/within/container /host/path/target
```

### To stop and kill the running containers(make sure to stop first)
```
docker stop $(docker ps -a -q)
docker kill $(docker ps -a -q)
```




