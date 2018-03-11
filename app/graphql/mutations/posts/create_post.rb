class Mutations::Posts::CreatePost < GraphQL::Function
  # Define the arguments this field will receive
  argument :title, !types.String
  argument :subtitle, !types.String
  argument :description, !types.String
  argument :content, !types.String
  argument :user_id, !types.ID

  # Return type from the mutation
  type Types::PostType

  # Resolve the field's response
  def call(_obj, args, _ctx)
    Post.create!(
      title: args[:title],
      subtitle: args[:subtitle],
      description: args[:description],
      content: args[:content],
      user_id: args[:user_id]
    )
  rescue ActiveRecord::RecordInvalid => err
    GraphQL::ExecutionError.new(post.errors.full_messages.join(', ').to_s)
  end
end
