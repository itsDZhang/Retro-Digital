# THIS IS A TUTORIAL

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

GETTING STARTED:
cd graphql-bookstore
rails s -p 3001
cd client
yarn start or npm run start


PRODUCTION:
If deploying to heroku:
heroku buildpacks:clear
heroku buildpacks:set heroku/nodejs
heroku buildpacks:add heroku/ruby --index 2


If not deploying to heroku:
From root folder: yarn build && yarn deploy