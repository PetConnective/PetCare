class User < ActiveRecord::Base
  has_many :pet

  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable,
          :omniauthable
  include DeviseTokenAuth::Concerns::User
end
