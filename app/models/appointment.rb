class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :hat
  validates_presence_of(:appointment_date, :city)
end
