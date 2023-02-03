class Mutations::CreateUser < Mutations::BaseMutation
  argument :email, String, required: true
  argument :name, String, required: true

  field :user, Types::UserType, null: false
  field :errors, [String], null:    

  def resolve(name:, email:)
    user = User.new(name: name, email: email)
    if user.save!
      {
        success: "User has been created successfully!",
        user: user,
      }
    else
      {
        errors: user.errors.full_messages
      }
    end
  end
end
