module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # /users
    field :users, [Types::UserType], null: false, description: "Returns list of users"
    def users
      User.all
    end

    # /user
    field :user, Types::UserType, null: false, description: "Returns a user" do
      argument :id, ID, required: true
    end

    def user(id:)
      User.find(id)
    end

    # /posts
    field :posts, [Types::PostType], null: false, description: "Returns list of posts"
    def posts
      Post.all
    end

    # /post
    field :post, Types::PostType, null: false, description: "Returns a post" do
      argument :id, ID, required: true
    end
    def post(id:)
      Post.find(id)
    end
  end
end
