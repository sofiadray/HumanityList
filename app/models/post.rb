class Post < ActiveRecord::Base
  belongs_to :charity, :dependent => :delete
  validates :title, :charity, :content, presence: true
end
