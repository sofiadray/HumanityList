class City < ActiveRecord::Base
  #has_many_and_belongs_to :charities
 belongs_to :state
end
