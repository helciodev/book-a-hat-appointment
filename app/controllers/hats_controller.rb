class HatsController < ApplicationController
  def index
    @hats = Hat.all
    render json: @hats
  end
end
