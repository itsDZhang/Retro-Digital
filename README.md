# README

This README would normally document whatever steps are necessary to get the
application up and running.

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


### Commands:
To run any command inside the containers:
```
docker-compose exec --user $(id -u):$(id -g) app /bin/bash
```
or 
```
docker-compose exec <service name (app)> bash
```


TODO (For later)
- [ ] Setup foreman to assist with hot reload for docker (since docker allows only one command per service)