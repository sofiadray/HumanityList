class Post < ActiveRecord::Base
  belongs_to :charity
  validates :title, :charity, :content, presence: true
end
