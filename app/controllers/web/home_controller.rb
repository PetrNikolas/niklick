# frozen_string_literal: true

module Web
  class HomeController < ApplicationController
    def index
      render plain: 'The API is running successfully.'
    end
  end
end
