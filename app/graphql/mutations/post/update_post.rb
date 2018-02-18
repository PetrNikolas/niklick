class Mutations::Post::UpdatePost < GraphQL::Function
    # Define the arguments this field will receive
    argument :id, !types.ID
    argument :title, !types.String
    argument :subtitle, !types.String
    argument :description, !types.String
    argument :content, !types.String

    # Return type from the mutation
    type Types::PostType

    # Resolve the field's response
    def call(obj, args, ctx)
        Post.find(args[:id]).update(title: args[:title], subtitle: args[:subtitle], description: args[:description], content: args[:content])
        Post.find(args[:id])
    end
end