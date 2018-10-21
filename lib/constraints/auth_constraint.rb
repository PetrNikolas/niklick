class AuthConstraint
  attr_reader :token

  def initialize(options)
    @token = options.fetch(:token)
  end

  def matches?(request)
    request
      .headers
      .fetch(:authorization)
      .include?("token=#{token}")
  end
end
