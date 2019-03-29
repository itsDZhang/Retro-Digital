class Mutations::UpdateUser < Mutations::BaseMutation
  null true

  argument :id, ID, required: true
  argument :name, String, required: true
  argument :job, String, required: false 

  # I have to finish update_user.rb

  field :user, UserType, null: true
  field :errors, [String], null: false

  def resolve(id:, name:, job:)
    user = User.find(id)
    if user.update(name: name, job: job)
      {
        user: user,
        errors: []
      }
    else
      {
        user: nil,
        errors: [user.errors.full_messages]
      }
    end

  end
  
end