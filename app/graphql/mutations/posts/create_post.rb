class Mutations::Posts::CreatePost < GraphQL::Function
    # Define the arguments this field will receive
    argument :title, !types.String
    argument :subtitle, !types.String
    argument :description, !types.String
    argument :content, !types.String

    # Return type from the mutation
    type Types::PostType

    # Resolve the field's response
    def call(obj, args, ctx)
        Post.create!(
            title: args[:title],
            subtitle: args[:subtitle],
            description: args[:description],
            content: args[:content]
        )
    end
end