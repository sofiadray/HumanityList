class Post < ActiveRecord::Base
  belongs_to :charity
  validates_presence_of :charity
  validates_presence_of :title
  validates_presence_of :content
end
