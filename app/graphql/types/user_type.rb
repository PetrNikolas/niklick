Types::UserType = GraphQL::ObjectType.define do
  name 'User'

  field :id, !types.ID
  field :first_name, !types.String
  field :second_name, !types.String
  field :nickname, types.String
  field :image, types.String
  field :email, !types.String
  field :tokens, types.String
  field :uid, !types.String
  field :role, types.Int

  field :news, !types[Types::NewsType] do
    # User.includes(:news)
    preload :news

    resolve ->(obj, _args, _ctx) { obj.news }
  end

  field :errors, types[types.String] do
    resolve ->(obj, _args, _ctx) { obj.errors.full_messages }
  end
end
