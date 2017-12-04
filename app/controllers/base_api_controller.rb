class BaseApiController < ApplicationController
    before_filter :parse_request, :indicate_source # :authenticate_user_from_token!

    private
        # Authorization
        # def authenticate_user_from_token!
        #    if !@json['api_token']
        #        render nothing: true, status: :unauthorized
        #    else
        #        @user = nil
        #        User.find_each do |u|
        #            if Devise.secure_compare(u.api_token, @json['api_token'])
        #                @user = u
        #            end
        #        end
        #    end
        #end

        # Method for validate json
        def validate_json(condition)
            unless condition
                render nothing: true, status: :bad_request
            end
        end

        # Method for update values
        def update_values(ivar, attributes)
            instance_variable_get(ivar).assign_attributes(attributes)
            validation_picker = check_validation_picker_existence(ivar)
            validation_picker.send(:new).pick_a_validation(instance_variable_get(ivar), @api) if validation_picker
            if instance_variable_get(ivar).save
                render nothing: true, status: :ok
            else
                render nothing: true, status: :bad_request
            end
        end

        def check_validation_picker_existence(ivar)
            Module.const_get (ivar.to_s[1..-1] + "_validation_picker").camelize rescue false
        end

        # Method for check if exist
        def check_existence(ivar, object, finder)
            instance_variable_set(ivar, instance_eval(object+"."+finder))
        end

        # Method for indicate source
        def indicate_source
            @api = true
        end

        # Method for parse request
        def parse_request
            # @json = JSON.parse(request.body.read)
            @json = request.body.read && request.body.read.length >= 2 ? JSON.parse(request.body.read) : nil
        end
end