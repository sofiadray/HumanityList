class State < ActiveRecord::Base
    has_many :cities

    validates :name, presence: true
    validates_uniqueness_of :name 

    scope :sort_by_alph, -> { order('name') }
end
