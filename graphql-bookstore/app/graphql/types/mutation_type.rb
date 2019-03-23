module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    # field :test_field, String, null: false,
    #   description: "An example field added by the generator"
    # def test_field
    #   "Hello World"
    # end

    field :create_author, mutation: Mutations::CreateAuthor

    field :update_author, mutation: Mutations::UpdateAuthor

    field :delete_author, mutation: Mutations::DeleteAuthor

    field :create_book, mutation: Mutations::CreateBook
    field :update_book, mutation: Mutations::UpdateBook
    field :delete_book, mutation: Mutations::DeleteBook


  end
end
