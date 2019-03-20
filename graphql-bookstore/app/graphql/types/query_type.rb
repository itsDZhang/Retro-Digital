module Types
  class QueryType < Types::BaseObject
    description "root query"
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :books, [BookType], null: true do
      description "Get all books"
    end

    field :book, BookType, null: true do
      description "Find a book by id"
      argument :id, ID, required: true
    end

    field :authors, [AuthorType], null: true do
      description "get all authors"
    end

    def books
      Book.all
    end

    def book(id:)
      Book.find(id)
    end

    def authors
      Author.all
    end
    
    
  end
end
