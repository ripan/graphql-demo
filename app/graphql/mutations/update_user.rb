class Mutations::UpdateUser < Mutations::BaseMutation
  argument :id, Integer, required: true
  argument :email, String, required: true
  argument :name, String, required: true

  field :user, Types::UserType, null: true
  field :errors, [String], null: true

  def resolve(id:, name:, email:)
    user = User.find(id)
    if user.update!(name: name, email: email)
      {
        success: "User has been updated successfully!",
        user: user
      }
    else
      {
        errors: user.errors.full_messages
      }
    end
  end
end
