Types::PostType = GraphQL::ObjectType.define do
  name "Post"

  field :id, !types.ID
  field :title, !types.String
  field :subtitle, !types.String
  field :description, !types.String
  field :content, !types.String
  field :user_id, !types.ID
end
