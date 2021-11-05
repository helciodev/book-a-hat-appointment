require 'rails_helper'

RSpec.describe Appointment, type: :model do
  it { should validate_presence_of(:appointment_date) }
  it { should validate_presence_of(:city) }
  it { should belong_to(:user) }
  it { should belong_to(:hat) }
end
