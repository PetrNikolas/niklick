class MiddlewareHealthcheck
  OK_RESPONSE = [200, { 'Content-Type' => 'text/plain' }, ['The API is running successfully.'.freeze]].freeze

  def initialize(app)
    @app = app
  end

  def call(env)
    if env['PATH_INFO'.freeze] == '/health'.freeze
      OK_RESPONSE
    else
      @app.call(env)
    end
  end
end
