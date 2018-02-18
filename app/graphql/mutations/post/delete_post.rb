class Mutations::Post::DeletePost < GraphQL::Function
    # Define the arguments this field will receive
    argument :id, !types.ID

    # Return type from the mutation
    type Types::PostType

    # Resolve the field's response
    def call(obj, args, ctx)
        Post.destroy(args[:id])
    end
end