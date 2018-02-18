module V1
  class GraphqlController < BaseApiController
    before_action :authenticate_user!, except: [ :execute_non_authorized ]

    # Non-authorized requests - GET
    def execute_non_authorized
      query = params[:query]
      result = Schema.execute(query)

      render json: result
    end

    # Authorized requests - POST
    def execute_authorized
      set_current_user

      query = params[:query]
      result = Schema.execute(query)

      render json: {message: 'success', user_id: @user_id, post: result}, status: 200
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_current_user
        @user_id = current_user.id
      end
  end
end
