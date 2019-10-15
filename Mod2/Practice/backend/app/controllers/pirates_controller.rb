class PiratesController < ApplicationController
  def index
    @pirates = Pirate.all

    render json: @pirates
  end

  def create
    @pirate = Pirate.create({
      name: params[:name],
      ship_id: params[:ship_id]
    })
  end
    
end
