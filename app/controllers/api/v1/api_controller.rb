module Api
  module V1
    class ApiController < ApplicationController
      # Concerns
      include Concerns::ErrorHandler

      before_action :authenticate_user!
    end
  end
end
