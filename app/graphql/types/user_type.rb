Types::UserType = GraphQL::ObjectType.define do
  name 'User'

  field :id, !types.ID
  field :name, !types.String
  field :nickname, !types.String
  field :image, !types.String
  field :email, !types.String
  field :tokens, !types.String
  field :uid, !types.String

  field :posts do
    type types[Types::PostType]
    resolve ->(obj, _args, _ctx) {
      obj.posts
    }
  end

  field :errors, types[types.String] do
    resolve ->(obj, _args, _ctx) { obj.errors.full_messages }
  end
end
