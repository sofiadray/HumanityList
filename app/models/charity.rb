class Charity < ActiveRecord::Base

  belongs_to :category
  belongs_to :user
  belongs_to :city
  
  has_many :posts, :dependent => :delete_all
  has_many :geocharitables  
  
  accepts_nested_attributes_for :geocharitables

  has_attached_file :image, :styles => { :medium => "300x300>",:thumb => "100x100>" }

  validates_attachment 	:image, 
			# :presence => true,
			:content_type => { :content_type => /\Aimage\/.*\Z/ },
			:size => { :less_than => 1.megabyte }

end
