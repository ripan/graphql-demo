class Mutations::DeleteUser < Mutations::BaseMutation
  argument :id, Integer, required: true

  field :success, String, null: true
  field :errors, [String], null: true

  def resolve(id:)
    user = User.find(id)
    if user.destroy!
      {
        success: "User has been deleted successfully!"
      }
    else
      {
        errors: user.errors.full_messages 
      }
    end
  end
end
