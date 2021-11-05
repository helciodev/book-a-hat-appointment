class HatsController < ApplicationController
  skip_before_action :authorize_request
  def index
    @hats = Hat.all
    render json: @hats
  end
end
