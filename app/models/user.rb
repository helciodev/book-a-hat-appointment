class User < ApplicationRecord
  has_many :appointments
  has_many :hats, through: :appointments
  validates_presence_of(:name, :password_digest, :email)
end
