class CitiesController < ApplicationController

  def index
    @cities = City.all
    @states = State.all
  end

  def show
  	@city = City.find(params[:id])
  	# @charities = Charity.where(city_id: @city.id)
  end
end
