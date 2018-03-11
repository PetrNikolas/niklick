Types::MutationType = GraphQL::ObjectType.define do
  name 'Mutation'

  field :createPost, function: Mutations::Posts::CreatePost.new
  field :deletePost, function: Mutations::Posts::DeletePost.new
  field :updatePost, function: Mutations::Posts::UpdatePost.new
end
