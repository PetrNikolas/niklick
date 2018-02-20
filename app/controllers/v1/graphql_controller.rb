module V1
  class GraphqlController < BaseApiController
    before_action :authenticate_user!

    def execute
      query = params[:query]
      variables = ensure_hash(params[:variables])
      context = {
        # Set current user as context of schema
        # current_user: current_user
      }

      result = Schema.execute(query, variables: variables, context: context)

      render json: result
    end

    private

    # Handle form data, JSON body, or a blank value
    def ensure_hash(ambiguous_param)
      case ambiguous_param
      when String
        if ambiguous_param.present?
          ensure_hash(JSON.parse(ambiguous_param))
        else
          {}
        end
      when Hash, ActionController::Parameters
        ambiguous_param
      when nil
        {}
      else
        raise ArgumentError, "Unexpected parameter: #{ambiguous_param}"
      end
    end
  end
end
