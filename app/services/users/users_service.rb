module Services
  module Users
    class MyCrazyClassWhichDoesSomething
      def call
        create_user
      end

      private

      def create_user
        Users::Create.new(attributes).call
      end
    end
  end
end
