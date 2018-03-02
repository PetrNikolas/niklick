Types::PostType = GraphQL::ObjectType.define do
  name "Post"

  field :id, !types.ID
  field :title, !types.String
  field :subtitle, !types.String
  field :description, !types.String
  field :content, !types.String
  field :user_id, !types.ID

  field :errors, types[types.String] do
    resolve -> (obj, args, ctx) { obj.errors.full_messages }
  end
end
