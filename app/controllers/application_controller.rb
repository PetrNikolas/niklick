class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  respond_to :json
  protect_from_forgery with: :null_session

  protected

  # Add custom fields to the Devise auth
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit :sign_up, keys: %i[first_name second_name nickname role]
    devise_parameter_sanitizer.permit :account_update, keys: %i[first_name second_name nickname role]
  end
end
