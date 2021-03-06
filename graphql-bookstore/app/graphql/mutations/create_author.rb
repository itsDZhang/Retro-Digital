class Mutations::CreateAuthor < Mutations::BaseMutation
  null true #what does this line mean? (ask)

  argument :name, String, required: true
  argument :age, Integer, required: false

  field :author, AuthorType, null: true
  # errors can be an array of strings
  field :errors, [String], null: false

  def resolve(name:, age:)
    author = Author.new(name: name, age: age)
    if author.save
      {
        author: author,
        errors: [],
      }
    else 
      {
        author: nil,
        errors: author.errors.full_messages
      }
    end
  end
end