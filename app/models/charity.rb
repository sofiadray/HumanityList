class Charity < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :posts
  # has_many_and_belongs_to :charities
  has_attached_file :image, :styles => { :medium => "300x300>",:thumb => "100x100>" }
	
  validates_attachment 	:image, 
			:presence => true,
			:content_type => { :content_type => /\Aimage\/.*\Z/ },
			:size => { :less_than => 1.megabyte }
end
