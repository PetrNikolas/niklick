Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :createPost, function: Mutations::CreatePost.new
  field :deletePost, function: Mutations::DeletePost.new
  field :updatePost, function: Mutations::UpdatePost.new
end
