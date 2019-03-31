class Mutations::DeleteComment < Mutations::BaseMutation
  null true

  argument :id, ID, required: true

  field :comment, CommentType, null: true
  field :errors, [String], null: false

  def resolve(id:)
    comment_to_delete = Comment.find(id)
    comment_to_delete.destroy
    {
      comment: comment_to_delete,
      errors: []
    }
  end
end