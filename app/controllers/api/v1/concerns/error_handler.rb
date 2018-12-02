module Api
  module V1
    module Concerns
      module ErrorHandler
        extend ActiveSupport::Concern

        included do
          rescue_from ActiveRecord::RecordNotFound, with: :not_found
        end

        def render_error(status, model)
          render json: { success: false, error: ErrorSerializer.serialize(model.errors) }, status: status
        end

        def not_found
          render json: { success: false, error: 'Not found' }, status: :not_found
        end
      end
    end
  end
end
