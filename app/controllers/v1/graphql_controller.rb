module V1
  class GraphqlController < BaseApiController
    before_action :authenticate_user!
    before_action :set_current_user

    def execute
      query = params[:query]
      query_variables = JSON.load(params[:variables]) || {}
      context = { current_user: @user }

      result = Schema.execute(query, variables: query_variables, context: context)

      render json: result
    end

    private
      def set_current_user
        @user = current_user
      end
  end
end
