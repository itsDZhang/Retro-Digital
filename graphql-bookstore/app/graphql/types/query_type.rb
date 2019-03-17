module Types
  class QueryType < Types::BaseObject
    description "root query"
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :authors, [AuthorType], null: true do
      description "get all authors"
    end

    def authors
      Author.all
    end
    
  end
end
