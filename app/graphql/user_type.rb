class UserType < GraphQL::Schema::Object
  field :id, ID, null: true
  field :name, String, null: true
  field :job, String, null: true
  field :comment, [CommentType], null: true
  field :created_at, String, null: true
end