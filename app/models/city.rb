class City < ActiveRecord::Base
	has_and_belongs_to_many :cities
	accepts_nested_attributes_for :charities
end
