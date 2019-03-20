class GraphqlBookstoreSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)
  # parsinging language
  # it's initializing a parser for its language
# TYpes acts like a mini programming language
# static code, creates a statically how the code should behanve
end
