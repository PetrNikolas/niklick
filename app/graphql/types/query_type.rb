Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  # NEWS
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

  # USERS
  # queries are just represented as fields
  field :allUsers do
    type types[Types::UserType]
    # arguments passed as "args"
    argument :orderBy, types.String, 'Column to order the results by', as: :order_by, default_value: 'id'
    # resolve would be called in order to fetch data for that field
    resolve ->(_obj, args, _ctx) { User.all.order(args[:order_by]) }
  end

  field :user do
    type Types::UserType
    argument :id, !types.ID
    # resolve would be called in order to fetch data for that field
    resolve ->(_obj, args, _ctx) { User.find(args[:id]) }
  end
end
