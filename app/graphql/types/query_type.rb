module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :users, [UserType], null: true do
      description "get all users"
    end

    field :user, UserType, null: true do
      description 'get a user by its id'
      argument :id, ID, required: true
    end

    field :comments, [CommentType], null: true do
      description 'get all comments'
    end

    field :comment, CommentType, null: true do
      description 'get comments by id'
      argument :id, ID, required: true
    end

    def users
      User.all
    end

    def user(id:)
      User.find(id)
    end

    def comments
      Comment.all
    end

    def comment(id:)
      Comment.find(id)
    end
    
  end
end
