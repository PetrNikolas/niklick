# defines a new GraphQL type
Types::NewsType = GraphQL::ObjectType.define do
  # this type is named `Link`
  name 'News'

  # it has the following fields
  field :id, !types.ID
  field :title, !types.String
  field :description, !types.String
  field :content, !types.String

  field :errors, types[types.String] do
    resolve ->(obj, _args, _ctx) { obj.errors.full_messages }
  end
end
