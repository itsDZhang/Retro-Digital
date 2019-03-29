# README

This project is strictly containerized. 
Every rails command has to be executed within the container. 
However, you may export the database URL if you wish. 

1. Install Docker (docker-compose), Altair, and clone this repo
2. Navigate to this folder
3. Run `docker-compose up --build`
4. After build exit and run `docker-compose up -d` to keep it running in the background
5. Run `docker-compose exec app bash` to go into the container
6. Create the Database: `bundle exec rake db:create db:migrate db:seed`
7. If you're outside of the container: `docker-compose exec rake db:create ...`)
8. Restart container: `docker-compose restart app`
9. Go to your Altair client, have your method set to `POST`
10. Set your URL to `http://localhost:3000/graphql` 
11. Type in your query (example):
```
query{
  users{
    createdAt
    id
    job
    name
    comment{
      content
      userId
      status
      votes
    }
  }
}
```

For more GraphQL queries, go [here](https://github.com/itsDZhang/Retro-Digital/blob/master/GraphqlCmds.md)


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
- [ ] Finish graphql mutations 
- [ ] Other backend stuff 
- [ ] Setup foreman to assist with hot reload for docker (since docker allows only one command per service)
- [ ] Develop the frontend


Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
