class New < ApplicationRecord
    # Validations
    validates :title, :presence => true,
                :length => { :minimum => 5 }
    validates :description, :presence => true,
                :length => { :minimum => 5, :maximum => 350 }
end
