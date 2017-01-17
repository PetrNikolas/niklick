class Post < ApplicationRecord

  validates :title, :presence => true,
            :length => { :minimum => 5 }
  validates :subtitle, :presence => true,
            :length => { :minimum => 10 }
  validates :description, :presence => true,
            :length => { :minimum => 5, :maximum => 150 }

end
