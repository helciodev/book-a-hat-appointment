require 'rails_helper'

RSpec.describe Hat, type: :model do
  it { should have_many(:appointments) }
  it { should have_many(:users).through(:appointments) }
  it { should validate_presence_of(:brand) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:image_url) }
end
