module V1
  class GraphqlController < BaseApiController
    before_action :authenticate_user!

    def execute
      query = params[:query]
      query_variables = JSON.load(params[:variables]) || {}
      context = {
        current_user: current_user
      }

      result = Schema.execute(query, variables: query_variables, context: context)

      render json: result
    end
  end
end
