# Docker/Rails_app Chatterbox
## Get the application up and running
# cd into the scripts directory and run ./set-up

# this will pull the images and configure the containers

# to check the running containers run
```
docker container ps
```

```
scripts/setup-env.sh
```

## Running the tests
```
docker-compose run app rspec
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
