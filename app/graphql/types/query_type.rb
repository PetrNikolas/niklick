Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  field :allPosts do
    type types[Types::PostType]
    description "A list of all the posts"

    resolve -> (obj, args, ctx) {
      Post.all
    }
  end

  field :post do
    type Types::PostType
    description "Return a one selected post"

    argument :id, !types.ID

    resolve -> (obj, args, ctx) {
      Post.find(args[:id])
    }
  end

  field :allUsers do
    type types[Types::UserType]
    description "A list of all the users"

    resolve -> (obj, args, ctx) {
      User.all
    }
  end

  field :user do
    type Types::UserType
    description "Return a one selected user"

    argument :id, !types.ID

    resolve -> (obj, args, ctx) {
      User.find(args[:id])
    }
  end
end
