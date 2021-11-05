class User < ApplicationRecord
  has_secure_password
  has_many :appointments, foreign_key: :user_id
  has_many :hats, through: :appointments
  validates_presence_of(:name, :password_digest, :email)
end
