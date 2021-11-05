class Hat < ApplicationRecord
  has_many :appointments
  has_many :users, through: :appointments
  validates_presence_of(:brand, :name, :image_url)
end
