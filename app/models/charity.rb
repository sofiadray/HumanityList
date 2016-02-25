class Charity < ActiveRecord::Base

  has_and_belongs_to_many :cities
  belongs_to :category
  belongs_to :user
  has_many :posts, :dependent => :destroy
 
  has_attached_file :image, :styles => { :medium => "300x300>",:thumb => "100x100>" }
	
	validates_attachment 	:image, 
				:presence => true,
				:content_type => { :content_type => /\Aimage\/.*\Z/ },
				:size => { :less_than => 1.megabyte }
accepts_nested_attributes_for :cities
end
