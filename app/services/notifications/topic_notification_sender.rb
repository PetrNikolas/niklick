module Services
  module Notifications
    class TopicNotificationSender
      require 'fcm'
      attr_reader :message, :topic

      def initialize(topic, message)
        @topic = topic
        @message = message
      end

      def call
        fcm_client.send_to_topic(topic, options)
      end

      private

      def options
        {
          priority: 'high',
          data: {
            message: message
          },
          notification: {
            body: message,
            # title: title,
            sound: 'default'
          }
        }
      end

      def fcm_client
        @fcm_client ||= FCM.new('API-KEY')
      end
    end
  end
end
