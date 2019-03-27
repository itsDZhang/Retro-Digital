class Mutations::CreateUser < Mutations::BaseMutation
  null true

  argument :name, String, required: true
  argument :job, String, required: false

  field :user, UserType, null: true
  field :errors, [String], null: false

  def resolve(name:, job:)
    newUser = User.new(name: name, job: job)
    if newUser.save
      {
        user: newUser,
        errors: [],
      }
    else
      {
        user: nil,
        errors: newUser.errors.full_messages
      }
    end
  end
  
  
end