class City < ActiveRecord::Base

  #has_many_and_belongs_to :charities
 belongs_to :state
 
validates :name, presence: true
validates :name, uniqueness: { scope: [:name, :state_id] }
end
