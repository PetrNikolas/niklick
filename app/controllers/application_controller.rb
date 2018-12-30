class ApplicationController < ActionController::Base
  around_action :collect_metrics
  respond_to :json

  protect_from_forgery with: :null_session

  # Request metrics for each controller
  def collect_metrics
    start = Time.now
    yield
    duration = Time.now - start
    Rails.logger.info "Controller #{controller_name} and #{action_name} action - duration #{duration}s"
  end
end
