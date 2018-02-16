Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :createPost, Types::PostType do
    argument :title, !types.String
    argument :subtitle, !types.String
    argument :description, !types.String
    argument :content, !types.String

    resolve -> (obj, args, ctx) {
      Post.create(
        title: args[:title],
        subtitle: args[:subtitle],
        description: args[:description],
        content: args[:content]
      )
    }
  end
end
