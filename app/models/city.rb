class City < ActiveRecord::Base

  has_many :geocharitables
  has_many :charities, through: :geocharitables

  belongs_to :state

  validates :name, presence: true
  validates :name, uniqueness: { scope: [:name, :state_id] }
end
