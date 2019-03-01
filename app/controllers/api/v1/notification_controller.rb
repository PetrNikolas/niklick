module Api
  module V1
    class NotificationController < ApiController
        def notify
            begin
                Firebase::TopicNotificationSender.new(params[:topic], params[:message]).call

                render json: { success: true }, status: :ok
            rescue StandardError => error
                render_error(:unprocessable_entity, error)
            end
        end
    end
  end
end
