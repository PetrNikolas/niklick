# frozen_string_literal: true

module Web
  class HomeController < ApplicationController
    def index
      render plain: 'Niklick - Versioned API!'
    end
  end
end
