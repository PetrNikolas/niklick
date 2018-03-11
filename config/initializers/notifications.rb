ActiveSupport::Notifications.subscribe('rack.attack') do |_name, _start, _finish, _request_id, req|
  Rails.logger.info "Throttled IP: #{req.ip}" if req.env['rack.attack.match_type'] == :throttle
end
