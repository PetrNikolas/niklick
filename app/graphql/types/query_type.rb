Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  # queries are just represented as fields
  field :allNews, !types[Types::NewsType] do
    # resolve would be called in order to fetch data for that field
    resolve -> (obj, args, ctx) { News.all }
  end
end
