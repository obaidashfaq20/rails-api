class User < ApplicationRecord
  acts_as_token_authenticatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :reviews
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def generate_new_authentication_token
    token = User.generate_unique_secure_token
    update_attribute :authentication_token, token
  end

end
