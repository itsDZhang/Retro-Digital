class Mutations::UpdateComment < Mutations::BaseMutation
  null true

  argument :id, ID, required: true
  argument :user_id, ID, required: true
  argument :status, String, required: false
  argument :content, String, required: false
  argument :date_created, String, required: false
  argument :votes, Integer, required: false

  field :comment, CommentType, null: true
  field :errors, [String], null: false

  def resolve(
    id:,
    user_id:,
    status:,
    content:,
    date_created:,
    votes:
  )
    old_comment = Comment.find(id)
    if old_comment.update(
      user_id: user_id,
      status: status,
      content: content,
      date_created: date_created,
      votes: votes
    ) 
      {
        comment: old_comment,
        errors: []
      }
    else
      {
        comment: nil,
        errors: old_comment.errors.full_messages
      }
    end
  end
  
  
end
  