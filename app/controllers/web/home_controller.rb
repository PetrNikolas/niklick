# frozen_string_literal: true

module Web
  class HomeController < ApplicationController
    def index
      render plain: 'Versioned API!'
    end
  end
end
