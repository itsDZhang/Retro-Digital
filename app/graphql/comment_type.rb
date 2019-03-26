class CommentType < GraphQL::Schema::Object
  field :id, ID, null: true
  field :status, String, null: true
  field :content, String, null: true
  field :date_created, String, null: true
  field :votes, Integer, null: true
  field :user, UserType, null: false
  field :user_id, ID, null: true
  field :created_at, String, null: true
  
end