class CitiesController < ApplicationController
	def index
		@cities = City.all
	end

	def show

	end

private

	def city_params
		params.require(:city).permit
	end
end
