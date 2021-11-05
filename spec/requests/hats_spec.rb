require 'rails_helper'

RSpec.describe "Hats", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/hats/index"
      expect(response).to have_http_status(:success)
    end
  end

end
