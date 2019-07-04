# == Schema Information
#
# Table name: news
#
#  id          :integer          not null, primary key
#  title       :string
#  description :string
#  content     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#

class News < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, length: { within: 2..40, message: 'Title is too short (minimum is 2 characters).' }
  validates :description, presence: true, length: { within: 8..70, message: 'Description is too short (minimum is 8 characters).' }, on: :create
  validates :content, presence: true
end
