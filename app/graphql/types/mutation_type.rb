Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :createPost, function: Mutations::Post::CreatePost.new
  field :deletePost, function: Mutations::Post::DeletePost.new
  field :updatePost, function: Mutations::Post::UpdatePost.new
end
