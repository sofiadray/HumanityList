class Geocharitable < ActiveRecord::Base
    belongs_to :city 
    belongs_to :charity 
end
