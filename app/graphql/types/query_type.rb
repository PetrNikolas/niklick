Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  # queries are just represented as fields
  field :allNews, !types[Types::NewsType] do
    # resolve would be called in order to fetch data for that field
    resolve ->(_obj, _args, _ctx) { News.all }
  end

  field :news do
    type Types::NewsType
    # arguments passed as "args"
    argument :id, !types.ID
    # resolve would be called in order to fetch data for that field
    resolve ->(_obj, args, _ctx) { News.find(args[:id]) }
  end
end
