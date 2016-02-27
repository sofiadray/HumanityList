class CitiesController < ApplicationController

  def index
    @cities = City.all
    @states = State.all
  end

  def show
  end
end
