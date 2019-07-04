# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  role                   :integer
#  nickname               :string
#  first_name             :string
#  second_name            :string
#

class User < ApplicationRecord
  before_create :set_default_parametres

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :news
  has_many :news, dependent: :delete_all

  validates :first_name, presence: true, length: { within: 2..50, message: 'First name is too short (minimum is 2 characters).' }
  validates :second_name, presence: true, length: { within: 2..50, message: 'Second name is too short (minimum is 2 characters).' }
  validates :password, presence: true, length: { within: 8..40, message: 'Name is too short (minimum is 8 characters).' }, on: :create
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: 'Only letters allowed.' }, uniqueness: { message: 'Email already exists.' }

  private

  def set_default_parametres
    self.role = 1
  end
end
