class New < ApplicationRecord
    after_initialize :set_ivars

    # Validations
    validates :title, :presence => true, :length => { :minimum => 5 }, if: lambda{ |model| model.instance_variable_get(:@strict_priority_validation) }
    validates :description, :presence => true, :length => { :minimum => 5, :maximum => 350 }

    private

        def set_ivars
            @strict_priority_validation = true
        end
end
