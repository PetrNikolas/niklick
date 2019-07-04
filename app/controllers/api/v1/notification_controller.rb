module Api
  module V1
    class NotificationController < ApiController
      def notify
        Firebase::TopicNotificationSender.new(params[:topic], params[:message]).call

        render json: { success: true }, status: :ok
      rescue StandardError => e
        render_error(:unprocessable_entity, e)
      end
    end
  end
end
