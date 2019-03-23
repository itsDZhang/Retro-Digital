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


### GraphQL commands

```



  # Enter your graphQL query here.

# {
#   authors {
#     name
#     id
#     books {
#       genre 
#       title
#     }
#   }
# }

# {
#   books{
#     author {
#       name
#     }
#     id
#     title
    
#   }
# }
# mutation createAuthor($name: String!, $age: Int){
#   createAuthor(name: $name, age: $age) {
#     author {
#       id
#       name
#       age
#     }
#   }
# }

# mutation updateAuthor($id: ID!, $name: String!, $age: Int){
#   updateAuthor(id: $id, name: $name, age: $age){
#     author {
#       name
#       age
#       id
#     }
#   }
# }

# mutation deleteAuthor($id: ID!) {
#   deleteAuthor(id: $id) {
#     author {
#       name
#       id
#     }
#   }
# }

# mutation createBook($author_id: ID!, $title: String, $genre: String){
#   createBook(authorId: $author_id, title: $title, genre: $genre){
#     book{
#       id
#       genre
#       title
#       authorId
#     }
#   }
# }

# mutation updateBook($id: ID!, $title: String, $genre: String) {
#   updateBook(id: $id, title: $title, genre: $genre){
#     book{
#       id
#       authorId
#       title
#       genre
#     }
#   }
# }

# mutation deleteBook($id: ID!){
#   deleteBook(id: $id){
#     book{
#       id
#       authorId
#       title
#       genre
#     }
#   }
# }





