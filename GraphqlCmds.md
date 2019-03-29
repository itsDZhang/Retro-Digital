### Graphql queries and mutations (tested)

{
  users{
    name
    id
    job
    createdAt   
  }
}

query{
  comments{
    content
    createdAt
    dateCreated
    id
    status
    user{
      name
    }
    userId
    votes
  }
}
query{
  users{
    id
    name
    comment{
      content
      status
    }
  }
}
mutation createUser($name: String!, $job: String){
  createUser(name: $name, job: $job){
    user{
      name
      job
    }
  }
}

mutation updateUser($id: ID!, $name: String!, $job: String){
  updateUser(id: $id, name: $name, job: $job){
   	user{
      name
      id
      job
    }
  }
}

mutation deleteUser($id: ID!){
  deleteUser(id: $id){
    user{
      name
      id
    }
  }
}

mutation createComment($user_id: ID!, $status: String, $votes: Int, $content: String, $created_at: String, $date_created: String){
  createComment(userId: $user_id, status: $status, content: $content, votes: $votes, dateCreated: $date_created, createdAt: $created_at){
    comment{
      userId
      status
      content
      votes
      dateCreated
      createdAt
    }
  }
}