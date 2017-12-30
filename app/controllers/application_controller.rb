class ApplicationController < ActionController::Base
  # Token auth
  include DeviseTokenAuth::Concerns::SetUserByToken

  protect_from_forgery with: :null_session

  respond_to :json
end
