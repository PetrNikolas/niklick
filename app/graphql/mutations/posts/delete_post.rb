class Mutations::Posts::DeletePost < GraphQL::Function
    # Define the arguments this field will receive
    argument :id, !types.ID

    # Return type from the mutation
    type Types::PostType

    # Resolve the field's response
    def call(obj, args, ctx)
        begin
            Post.destroy(args[:id])
        rescue ActiveRecord::RecordInvalid => err
            GraphQL::ExecutionError.new("#{post.errors.full_messages.join(", ")}")
        end
    end
end