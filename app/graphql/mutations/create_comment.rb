class Mutations::CreateComment < Mutations::BaseMutation
  null true

  argument :user_id, ID, required: true
  argument :status, String, required: false
  argument :content, String, required: false
  argument :date_created, String, required: false
  argument :created_at, String, required: false
  argument :votes, Integer, required: false

  field :comment, CommentType, null: true
  field :errors, [String], null: false

  def resolve(
    user_id:, 
    status:, 
    content:, 
    date_created:,
    created_at:,
    votes:)
    
    new_comment = Comment.new(
      user_id: user_id,
      status: status,
      content: content,
      date_created: date_created,
      created_at: created_at,
      votes: votes
    )
    if new_comment.save
      {
        comment: new_comment,
        errors:[]
      }
    else
      {
        comment: nil,
        errors: new_comment.errors.full_messages
      }
    end
  end
  
end