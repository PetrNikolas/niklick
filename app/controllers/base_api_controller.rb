class BaseApiController < ApplicationController
    before_action :parse_request, :indicate_source

    private
        # Method for indicate source
        def indicate_source
            @api = true
        end

        # Method for parse request
        def parse_request
            @json = request.body.read && request.body.read.length >= 2 ? JSON.parse(request.body.read) : nil
        end
end