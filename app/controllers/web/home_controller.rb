# frozen_string_literal: true

module Web
  class HomeController < ApplicationController
    layout 'home'

    def index
      @images = {
        instagram: path_to_asset('landing/server-instagram'),
        twitter: path_to_asset('landing/server-twitter'),
        medium: path_to_asset('landing/server-medium')
      }
    end

    private

    def path_to_asset(asset)
      ApplicationController.helpers.asset_path(asset)
    end
  end
end
