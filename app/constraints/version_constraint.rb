module Constraint
  class VersionConstraint
    attr_reader :version

    def initialize(options)
      @version = options.fetch(:version)
    end

    def matches?(request)
      request
        .headers
        .fetch('version')
        .include?("version=#{version}")
    end
  end
end
