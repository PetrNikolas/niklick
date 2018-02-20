Types::UserType = GraphQL::ObjectType.define do
  name "User"

  field :id, !types.ID
  field :name, !types.String
  field :nickname, !types.String
  field :image, !types.String
  field :email, !types.String
  field :tokens, !types.String
  field :uid, !types.String

  field :posts do
    type types[Types::PostType]
    resolve -> (obj, args, ctx) {
      obj.posts
    }
  end
end
