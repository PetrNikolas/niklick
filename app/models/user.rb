class User < ApplicationRecord
  before_create :set_default_parametres

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :news
  has_many :news

  validates :first_name, presence: true, length: { within: 2..50, message: 'First name is too short (minimum is 2 characters).' }
  validates :second_name, presence: true, length: { within: 2..50, message: 'Second name is too short (minimum is 2 characters).' }
  validates :password, presence: true, length: { within: 8..40, message: 'Name is too short (minimum is 8 characters).' }, on: :create
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: 'Only letters allowed.' }, uniqueness: { message: 'Email already exists.' }

  private

  def set_default_parametres
    self.role = 1
  end
end
