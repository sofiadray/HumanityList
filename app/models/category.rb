class Category < ActiveRecord::Base
  has_many :charities
  validates :name, presence: true
end
