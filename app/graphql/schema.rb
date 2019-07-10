Schema = GraphQL::Schema.define do
  max_depth 4
  use GraphQL::Batch
  enable_preloading

  mutation(Types::MutationType)
  query(Types::QueryType)

  # use GraphQL::Cache
end

Schema.middleware <<
  GraphQL::Schema::TimeoutMiddleware.new(max_seconds: 4) do |_err, query|
    Rails.logger.info("GraphQL Timeout: #{query.query_string}")
  end
