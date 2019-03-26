module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :users, [UserType], null: true do
      description "get all users"
    end

    def users
      User.all
    end
    
  end
end
